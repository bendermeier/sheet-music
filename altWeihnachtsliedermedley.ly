\version "2.22.1"

\header {
  title = "Weihnachts-Medley für Jugendorchester"
  subtitle = "Vollständiges Medley (Alle 4 Lieder am Stück)"
  composer = "Arrangement: Kinder & Profis"
}

% ------------------------------------------
% 1. RUDOLPH THE RED-NOSED REINDEER
% ------------------------------------------
rudolphMelodie = \relative c' {
  \clef treble \key bes \major \time 4/4
  \tempo "1. Rudolph (Medium Swing)" 4 = 112
  g8\f a bes g d'4 c | g8 a bes g d'2 |
  g8 a bes c d4. c8 | c1 |
  f,8\f g f d bes'4 g8 f~ | f8 g f g f4 bes | a1 |
  es8 f es c a'4 g8 f~ | f8 g f g f4 c' | bes1 \bar "||"
}

rudolphKinder = \relative c' {
  \clef treble \key bes \major \time 4/4
  <d f>1\mf | <d f>1 | <c es>1 | <f a>1 |
  r4 <d f>8\f r r4 <d f>8 r | r4 <d f>8 r r4 <d f>8 r | r4 <c es>8 r r4 <c es>8 r |
  r4 <c es>8 r r4 <c es>8 r | r4 <d f>8 r r4 <d f>8 r | <d f>1 \bar "||"
}

rudolphBass = \relative c, {
  \clef bass \key bes \major \time 4/4
  bes4\f r f' r | bes, r f' r | c r f r | f r f r |
  bes,4\f r f' r | bes, r f' r | f r c r |
  f4 r c r | f r c r | bes r f' r \bar "||"
}

% ------------------------------------------
% 2. WINTER WONDERLAND
% ------------------------------------------
winterMelodie = \relative c' {
  \key bes \major \time 4/4
  \tempo "2. Winter Wonderland (Andante)" 4 = 92
  f8\p f f f d4 f8 bes~ | bes2 r4 f8 g |
  a8 a a a f4 a8 c~ | c2 r2 |
  d4\mf d8 d c4 bes8 a | g4 a8 bes c4 bes8 a |
  g4 f8 f es4 c | bes1 \bar "||"
}

winterKinder = \relative c' {
  \key bes \major \time 4/4
  r4 <d f>\p <d f> r | r <d f> <d f> r |
  r4 <c es> <c es> r | r <c es> <c es> r |
  <d f>1\mf | <c es>1 | <c es>2 <a c> | <d f>1 \bar "||"
}

winterBass = \relative c, {
  \key bes \major \time 4/4
  bes2\p d | f bes, | f' c | f bes, |
  bes2\mf d | es c | f f, | bes1 \bar "||"
}

% ------------------------------------------
% 3. JOY TO THE WORLD
% ------------------------------------------
joyMelodie = \relative c'' {
  \key bes \major \time 4/4
  \tempo "3. Joy to the World (Allegro)" 4 = 108
  bes4.\f a8 g4. f8 | es4. d8 c4. bes8 |
  f'4. g8 g4. a8 | a4. bes8 bes2 |
  bes8. a16 g8. f16 bes4. a8 | g8. f16 es8. d16 c4. bes8 |
  f'4. g8 g4. a8 | a4. bes8 bes2 \bar "||"
}

joyKinder = \relative c' {
  \key bes \major \time 4/4
  <d f>2\f <d f> | <c es> <bes d> |
  <c es> <c es> | <f a> <d f> |
  <d f>4 <d f> <d f>2 | <c es>4 <c es> <bes d>2 |
  <c es>2 <c es> | <f a> <d f> \bar "||"
}

joyBass = \relative c, {
  \key bes \major \time 4/4
  bes4\f bes d bes | es es bes bes |
  f' f c f | f f bes,2 |
  bes4 bes bes2 | es4 es bes2 |
  f'4 f c f | f f bes,2 \bar "||"
}

% ------------------------------------------
% 4. WE WISH YOU A MERRY CHRISTMAS
% ------------------------------------------
wishMelodie = \relative c' {
  \key bes \major \time 3/4
  \tempo "4. We Wish You a Merry Christmas (Walzer)" 4 = 132
  \partial 4 f4\mf |
  bes4 bes8 c bes a | g4 g g |
  c4 c8 d c bes | a4 f f |
  d'4 d8 es d c | bes4 g f8 f |
  g4 c a | bes2 r4 \bar "|."
}

wishKinder = \relative c' {
  \key bes \major \time 3/4
  \partial 4 r4 |
  r4 <d f>\mf <d f> | r4 <es g> <es g> |
  r4 <e g> <e g> | r4 <c f> <c f> |
  r4 <f bes> <f bes> | r4 <es g> <es g> |
  r4 <c es> <c f> | <d f>2 r4 \bar "|."
}

wishBass = \relative c, {
  \key bes \major \time 3/4
  \partial 4 r4 |
  bes4\mf f' f | es g g |
  c, g' g | f c c |
  bes4 d d | es g g |
  f4 f, f | bes2 r4 \bar "|."
}

% ------------------------------------------
% NORMALE ZUSAMMENFÜHRUNG IN EINER DATEI
% ------------------------------------------
gesamtMelodie = {
  \rudolphMelodie
  \winterMelodie
  \joyMelodie
  \wishMelodie
}

gesamtKinder = {
  \rudolphKinder
  \winterKinder
  \joyKinder
  \wishKinder
}

gesamtBass = {
  \rudolphBass
  \winterBass
  \joyBass
  \wishBass
}

% ------------------------------------------
% EINZIGER SCORE-BLOCK (1 x MIDI für alles)
% ------------------------------------------
\score {
  <<
    \new Staff \with { instrumentName = "Hauptmelodie" } { \gesamtMelodie }
    \new Staff \with { instrumentName = "Kinder-Begleitung" } { \gesamtKinder }
    \new Staff \with { instrumentName = "Tuba / Bass" } { \gesamtBass }
  >>
  \layout { }
  \midi { }
}