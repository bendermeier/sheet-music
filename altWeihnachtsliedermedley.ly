\version "2.22.1"
\header {
  title = "Weihnachts-Medley für Jugendorchester"
  subtitle = "Komplett in B-Dur (Klingend) – Mit Dynamik & Artikulation"
  composer = "Arrangement für 10 Kinder & 3 Profis"
}

% ==========================================
% TEIL 1: RUDOLPH THE RED-NOSED REINDEER
% ==========================================
rudolphSwingMelodie = \relative c'' {
  \clef treble \key bes \major \time 4/4
  \tempo "Largo (Feierlich)" 4 = 60
  bes4\p a g f | es d c bes4 | r4 f' g a | bes2\fermata r2 \bar "||"
  \break
  \tempo "Medium Swing" 4 = 120
  \mark \markup { \box "Rudolph the Red-Nosed Reindeer" }
  bes4\f-. a-. g-. f-. | es-. d-. c-. bes4-. | r4 f' g a | bes2 r2 \bar "||"
}

rudolphSwingKids = \relative c' {
  \clef treble \key bes \major \time 4/4
  <d f>1\p | <c es>1 | <d f>1 | <d f>2\fermata r2 \bar "||"
  \break
  r4 <d f>8\f r8 r4 <d f>8 r8 | r4 <c es>8 r8 r4 <c es>8 r8 | r4 <d f>8 r8 r4 <d f>8 r8 | r2 r2 \bar "||"
}

rudolphSwingTuba = \relative c, {
  \clef bass \key bes \major \time 4/4
  bes1\p | bes1 | f'1 | bes,2\fermata r2 \bar "||"
  \break
  bes4\f r f' r | es r bes r | f' r c r | bes r r2 \bar "||"
}

% ==========================================
% TEIL 2: WINTER WONDERLAND (Metallophon)
% ==========================================
winterMetallophon = \relative c'' {
  \clef treble \key bes \major \time 4/4
  \tempo "Andante (Magisch & Ruhig)" 4 = 80
  \mark \markup { \box "Winter Wonderland" }
  f4\p b, d b | f' b, d b | es, b' d b | f b r2 \bar "||"
}

winterProfis = \relative c'' {
  \clef treble \key bes \major \time 4/4
  d2\p( c) | bes2( a) | g2( f) | bes1 \bar "||"
}

winterKids = \relative c' {
  \clef treble \key bes \major \time 4/4
  <d f>1\pp | <d f>1 | <c es>1 | <d f>1 \bar "||"
}

winterTuba = \relative c, {
  \clef bass \key bes \major \time 4/4
  bes1\pp | bes1 | es1 | bes1 \bar "||"
}

% ==========================================
% TEIL 3: JOY TO THE WORLD (Orchester-Tutti)
% ==========================================
joyMelodie = \relative c'' {
  \clef treble \key bes \major \time 4/4
  \tempo "Allegro (Majestätisch)" 4 = 100
  \mark \markup { \box "Joy to the World" }
  bes4\f a g f | es d c bes4 | r4 f' g a | bes2 r2 \bar "||"
  bes4 a g f | es d c bes4 | r4 f' g a | bes2 r2 \bar "||"
}

joyTubaBass = \relative c, {
  \clef bass \key bes \major \time 4/4
  bes4\f f' bes, f' | es bes es, bes' | f c' f, c' | bes f bes, r |
  bes4 f' bes, f' | es bes es, bes' | f c' f, c' | bes f bes, r \bar "||"
}

joyDrums = \drummode {
  \time 4/4
  bd4\f sn bd sn | bd sn bd sn | bd sn bd sn | bd sn bd r |
  bd4 sn bd sn | bd sn bd sn | bd sn bd sn | bd sn bd r \bar "||"
}

% ==========================================
% TEIL 4: WE WISH YOU A MERRY CHRISTMAS
% ==========================================
kidsBegleitung = \relative c' {
  \clef treble \key bes \major \time 3/4
  \tempo "Walzer" 4 = 144
  \mark \markup { \box "We Wish You a Merry Christmas" }
  r4\mf <d f> <d f> | r4 <es g> <es g> | r4 <e g> <e g> | r4 <c f> <c f> |
  r4 <d fis> <d fis> | r4 <d g> <d g> | r4 <es g> <c f> | <d f>2 r4 \bar "||"
}

tubaSolo = \relative c {
  \clef bass \key bes \major \time 3/4
  f4\mf bes bes8 c | d4 bes g~ | g c c8 d | es4-. c-. a-. |
  f d' d8 es | f4. d8 bes4 | g-. c-. f,-. | bes2 r4 \bar "||"
}

tubaBass = \relative c, {
  \clef bass \key bes \major \time 3/4
  \mark \markup { \bold "Finale: Tutti mit Walking-Bass" }
  bes4\f d f | es g bes | f a c | bes a g |
  c, es g | f g a | bes d f | bes2.\fermata \bar "|."
}

drumsTeilB = \drummode {
  \time 3/4
  bd4\f sn sn | bd sn sn | bd sn sn | bd sn sn |
  bd sn sn | bd sn sn | bd sn sn | bd2 r4 \bar "||"
}

% ==========================================
% PARTITUR-AUSGABE & MIDI GENERIERUNG
% ==========================================

\markup { \bold \large "TEIL 1: Rudolph the Red-Nosed Reindeer" }
\score {
  <<
    \new Staff \with { instrumentName = "Profis (Melodie)" } { \rudolphSwingMelodie }
    \new Staff \with { instrumentName = "Kinder (Begleitung)" } { \rudolphSwingKids }
    \new Staff \with { instrumentName = "Tuba" } { \rudolphSwingTuba }
  >>
  \layout { }
  \midi { }
}

\markup { \vspace #2 \bold \large "TEIL 2: Winter Wonderland" }
\score {
  <<
    \new Staff \with { instrumentName = "Metallophon" } { \winterMetallophon }
    \new Staff \with { instrumentName = "Profis (Flöte/Klarinette)" } { \winterProfis }
    \new Staff \with { instrumentName = "Kinder (Klangteppich)" } { \winterKids }
    \new Staff \with { instrumentName = "Tuba" } { \winterTuba }
  >>
  \layout { }
  \midi { }
}

\markup { \vspace #2 \bold \large "TEIL 3: Joy to the World" }
\score {
  <<
    \new Staff \with { instrumentName = "Tutti (Melodie)" } { \joyMelodie }
    \new DrumStaff \with { instrumentName = "Drums" } { \joyDrums }
    \new Staff \with { instrumentName = "Tuba Bass" } { \joyTubaBass }
  >>
  \layout { }
  \midi { }
}

\markup { \vspace #2 \bold \large "TEIL 4: We Wish You a Merry Christmas" }
\score {
  <<
    \new Staff \with { instrumentName = "Begleitung (Kinder)" } { \kidsBegleitung }
    \new DrumStaff \with { instrumentName = "Drums" } { \drumsTeilB }
    \new Staff \with { instrumentName = "Tuba / Solo" } { \tubaSolo }
  >>
  \layout { }
  \midi { }
}

\markup { \vspace #1 \bold \large "Finale" }
\score {
  <<
    \new Staff \with { instrumentName = "Tuba Walking-Bass" } { \tubaBass }
  >>
  \layout { }
  \midi { }
}