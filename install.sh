#!/usr/bin/env bash
# This script automatically detect the PulseEffects presets directory and installs the presets

check_type() {
     if flatpak list | grep -q "com.github.wwmm.pulseeffects"; then
        PRESETS_DIRECTORY="$HOME/.var/app/com.github.wwmm.pulseeffects/config/PulseEffects"
        elif [ -d "$HOME/.config/PulseEffects" ]; then
        PRESETS_DIRECTORY="$HOME/.config/PulseEffects"
    else
        echo "Error! Couldn't find PulseEffects presets directory!"
        exit 1
    fi
}

check_impulse_directory() {
    if [ ! -d "$PRESETS_DIRECTORY/irs" ]; then
        mkdir "$PRESETS_DIRECTORY/irs"
    fi
}

install_presets(){
            echo "Installing MusicX1"
            curl "https://raw.githubusercontent.com/herobrine30396/Pulseeffects-music-EQ/main/MusicX1.json" --output "$PRESETS_DIRECTORY/output/MusicX1.json" --silent
            echo "Installing impulse files"
            curl "https://raw.githubusercontent.com/JackHack96/PulseEffects-Presets/master/irs/Dolby%20ATMOS%20((128K%20MP3))%201.Default.irs" --output "$PRESETS_DIRECTORY/irs/Dolby ATMOS ((128K MP3)) 1.Default.irs" --silent
            curl "https://raw.githubusercontent.com/JackHack96/PulseEffects-Presets/master/irs/MaxxAudio%20Pro%20((128K%20MP3))%204.Music%20w%20MaxxSpace.irs" --output "$PRESETS_DIRECTORY/irs/MaxxAudio Pro ((128K MP3)) 4.Music w MaxxSpace.irs" --silent
            curl "https://raw.githubusercontent.com/JackHack96/PulseEffects-Presets/master/irs/Razor%20Surround%20((48k%20Z-Edition))%202.Stereo%20+20%20bass.irs" --output "$PRESETS_DIRECTORY/irs/Razor Surround ((48k Z-Edition)) 2.Stereo +20 bass.irs" --silent
            curl "https://raw.githubusercontent.com/JackHack96/PulseEffects-Presets/master/irs/Accudio%20((48kHz%20Z.E.))%20Earpods%20HIFI.irs" --output "$PRESETS_DIRECTORY/irs/Accudio ((48kHz Z.E.)) Earpods HIFI.irs" --silent
            curl "https://raw.githubusercontent.com/JackHack96/PulseEffects-Presets/master/irs/Accudio%20((48kHz%20Z.E.))%20MDR-E9LP%20HIFI.irs" --output "$PRESETS_DIRECTORY/irs/Accudio ((48kHz Z.E.)) MDR-E9LP HIFI.irs" --silent
            curl "https://raw.githubusercontent.com/JackHack96/PulseEffects-Presets/master/irs/Accudio%20((48kHz%20Z.E.))%20MDR-E9LP%20SM%20SRH940.irs" --output "$PRESETS_DIRECTORY/irs/Accudio ((48kHz Z.E.)) MDR-E9LP SM SRH940.irs" --silent
            curl "https://raw.githubusercontent.com/JackHack96/PulseEffects-Presets/master/irs/Accudio%20((48kHz%20Z.E.))%20MDR-E9LP%20SM%20XBA3.irs" --output "$PRESETS_DIRECTORY/irs/Accudio ((48kHz Z.E.)) MDR-E9LP SM XBA3.irs" --silent
            curl "https://raw.githubusercontent.com/JackHack96/PulseEffects-Presets/master/irs/Accudio%20((48kHz%20Z.E.))%20MDR-E9LP%20SM%20beyerT1.irs" --output "$PRESETS_DIRECTORY/irs/Accudio ((48kHz Z.E.)) MDR-E9LP SM beyerT1.irs" --silent
            curl "https://raw.githubusercontent.com/JackHack96/PulseEffects-Presets/master/irs/Accudio%20((48kHz%20Z.E.))%20MDR-XB500%20HIFI.irs" --output "$PRESETS_DIRECTORY/irs/Accudio ((48kHz Z.E.)) MDR-XB500 HIFI.irs" --silent
            curl "https://raw.githubusercontent.com/JackHack96/PulseEffects-Presets/master/irs/Accudio%20((48kHz%20Z.E.))%20XBA-H3%20HIFI.irs" --output "$PRESETS_DIRECTORY/irs/Accudio ((48kHz Z.E.)) XBA-H3 HIFI.irs" --silent
            curl "https://raw.githubusercontent.com/JackHack96/PulseEffects-Presets/master/irs/Accudio%20((48kHz%20Z.E.))%20XBA-H3%20SM%20SRH940.irs" --output "$PRESETS_DIRECTORY/irs/Accudio ((48kHz Z.E.)) XBA-H3 SM SRH940.irs" --silent
            curl "https://raw.githubusercontent.com/JackHack96/PulseEffects-Presets/master/irs/Accudio%20((48kHz%20Z.E.))%20XBA-H3%20SM%20XBA4.irs" --output "$PRESETS_DIRECTORY/irs/Accudio ((48kHz Z.E.)) XBA-H3 SM XBA4.irs" --silent
            curl "https://raw.githubusercontent.com/JackHack96/PulseEffects-Presets/master/irs/Accudio%20((48kHz%20Z.E.))%20XBA-H3%20SM%20beyerT1.irs" --output "$PRESETS_DIRECTORY/irs/Accudio ((48kHz Z.E.)) XBA-H3 SM beyerT1.irs" --silent
            curl "https://raw.githubusercontent.com/JackHack96/PulseEffects-Presets/master/irs/Creative%20X-Fi%20((Z-Edition))%20Crystalizer%2010%20%2B%20Expand%2010.irs" --output "$PRESETS_DIRECTORY/irs/Creative X-Fi ((Z-Edition)) Crystalizer 10 + Expand 10.irs" --silent
            curl "https://raw.githubusercontent.com/JackHack96/PulseEffects-Presets/master/irs/HTC%20Beats%20Audio%20((Z-Edition)).irs" --output "$PRESETS_DIRECTORY/irs/HTC Beats Audio ((Z-Edition)).irs" --silent
            curl "https://raw.githubusercontent.com/JackHack96/PulseEffects-Presets/master/irs/Waves%20MaxxAudio%20((Z-Edition))%20AudioWizard%201.Music.irs" --output "$PRESETS_DIRECTORY/irs/Waves MaxxAudio ((Z-Edition)) AudioWizard 1.Music.irs" --silent
            sed -i 's/niel/'"$USER"'/g' "$PRESETS_DIRECTORY/output/MusicX1.json"
            echo "Done!"
}

check_type
check_impulse_directory
install_presets
