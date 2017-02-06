--University of Central Florida
--COP4020: Spring 2017
--Group: That Rushing Water Sound You Hear in the Walls of CB2

module Hep where

hep :: [String] -> [String]

hep [] = []

hep txt = case txt of
	"you":txt -> "u":hep txt
	"are":txt -> "r":hep txt
	"your":txt -> "ur":hep txt
	"by": "the": "way":txt -> "btw":hep txt
	"for": "your": "information":txt -> "fyi":hep txt
	"boyfriend":txt -> "bf":hep txt
	"girlfriend":txt -> "gf":hep txt
	"be": "right": "back":txt -> "brb":hep txt
	"laughing": "out": "loud":txt -> "lol":hep txt
	"see": "you":txt -> "cya":hep txt
	"I": "will":txt -> "I'll":hep txt
	"great":txt -> "gr8":hep txt
	x:txt -> x:hep txt
