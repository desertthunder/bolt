// Bolt is a cli application to manage dotfiles. It behaves
// in a way similar to rsync.
package main

import (
	"crypto/md5"
	"hash"
	"io"
	"os"
	"time"

	"github.com/urfave/cli/v2"

	"github.com/charmbracelet/log"
)

var (
	files []string = []string{".wezterm.lua", ".zshrc"}
	dirs  []string = []string{"nvim", "zellij"}
)

// Bolted is a container type for applications that have
// stored configurations in the root dir or the XDG_CONFIG
// directory.
type Bolted struct {
	Zsh     string
	Zellij  string // Requires directory walking
	NeoVim  string // Requires directory walking
	Wezterm string
}

type BoltedFile struct {
	Path             string
	FileSize         int64
	ModificationTime time.Time
	Hash             hash.Hash
}

// ComputeHash computes and sets the computed hash of a file
func (b *BoltedFile) ComputeHash() {
	h := md5.New()

	f, err := os.Open(b.Path)
	if err != nil {
		log.Fatalf("unable to open file %s: %s", b.Path, err.Error())
	}

	defer f.Close()

	if _, err = io.Copy(h, f); err != nil {
		log.Fatalf("unable to generate hash from %s: %s", b.Path, err.Error())
	}

	log.Debugf("computed hash %s for file: %s", string(h.Sum(nil)), b.Path)

	b.Hash = h
}

// Walk walks through a directory and generates a struct
// of attrs for each file.
func Walk() {}

// Backup copies files that are about to be replaced to a
// directory in the user's home directory.
func Backup() {}

// Compare compares files and prints the diff to stdout
func Compare() bool {
	return false
}

func Root() *cli.Command {
	return &cli.Command{
		Name: "root",
		Action: func(ctx *cli.Context) error {
			log.Info("Hello world!")
			return nil
		},
	}
}

func App() *cli.App {
	return &cli.App{
		Name: "bolt",
		Commands: []*cli.Command{
			Root(),
		},
	}
}

func main() {
	app := App()

	if err := app.Run(os.Args); err != nil {
		log.Fatalf("something went wrong: %s", err.Error())
	}
}
