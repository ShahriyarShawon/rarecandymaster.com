+++
title = "Automatic TV Show Intro Detection"
date = "2025-07-05"
tags = ["python", "computer-vision"]
draft = true
+++

# TLDR

# Motivation

I was rewatching Dragon Ball Z Kai recently and noticed that, 
up until the Cell arc, the intro song was the same as I remembered as
a kid but the singer kept on changing every few episodes. 
I didn't particularly like most of the singers despite them being 
voice actors for the characters in the show. I only remember 1 singer by
the name Vic Mignogna and his singing for the intro song "Dragon Soul",
in my opinion is the best.

Having All the files for these Dragon Ball Z Kai episodes, I figured 
that using ffmpeg, I could use the audio track for Vic's singing and 
replace it in the file for a specific episode. This would only work up 
to and including the cell saga as the Buu saga had a completely
different intro but that's fine.

The problem I had though, was that I needed to know when the intro started and ended and that changes a little bit every episode due to different lengths of recaps and such. Or it could be the first thing that
happens in the episode.

# Process

## Overview

To calculate the start and end of an intro, I decided to use a 
technique for testing image similarity called 
MS-SSIM (Multi Scale Structural Similarity) which just tells me a 
float value ([0, 1]) of how similar two images are. 

I would compare the last frame of the intro to each frame sequentially
and see what the values are. I plotted the values for each frame for the first 2.5K ish frames for the first episode as a control.

TODO: Insert Picture

As you can see there's pretty low similarity for a while and then
there's an upwards spike, a sustained high similarity, and then a 
sharp downwards spike. The sharp downwards spike signifies the end of the intro so thats what I'll look for. I can calculate that downwards spike just by looking at the current and previous value and seeing if the difference is larger than a threshold which I'm keeping to `0.4`.

Using the index of the last frame and the fps value of video, I can calculate how far into the video the intro ends, subtract the length of the intro and I'll have the start and end positions.



# Results

# Competing Methods
