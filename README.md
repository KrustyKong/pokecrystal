# Pokémon Crystal [![Build Status][travis-badge]][travis]

outside of the essential changes (phys/spec, fairy type, hp bar moves faster, evo families all have same stats), it changes a lotta other shit like making solarbeam a single turn move that does 70 damage but double in the sun, crit chances only occur w the mechanics that encourage it (0% crit if not usin razor leaf/scope lens/focus energy/etc), taking leech seed/burn/etc damage at the end of the turn, adding in a bunch of moves from newer games (drill run over horn drill), combining moves to make battles more dynamic (flame wheel has 100% chance to raise speed from flame charge).
biggest core change is allowing moves to have an additional effect by using the "extra bit," which is an additional value each move has that corresponds to a move effect. this allows us to bring in moves from later games, or at least mimic them. for example, we put in volt switch by making thundershock use the effect for baton pass 100% of the time (nerfed the moves power to account for the added utility). you can kinda go in there and do some crazy stuff like make sacred fire have a chance to pull up the sun, or mega kick have a chance to enact focus energy. the files should be comprehensive enough to tell whats goin on and make your own edits for some crazy fun move effects. hell, i wonulndt mind if you changed all the effects back so they exactly mirrored vanilla crystal.

This is a fork of the disassembly of Pokémon Crystal.

It builds the following ROMs:

- Pokemon - Crystal Version (UE) (V1.0) [C][!].gbc `sha1: f4cd194bdee0d04ca4eac29e09b8e4e9d818c133`
- Pokemon - Crystal Version (UE) (V1.1) [C][!].gbc `sha1: f2f52230b536214ef7c9924f483392993e226cfb`
- Pokemon - Crystal Version (A) [C][!].gbc `sha1: a0fc810f1d4e124434f7be2c989ab5b5892ddf36`

To set up the repository, see [INSTALL.md](INSTALL.md).

## See also

- [**FAQ**](FAQ.md)
- [**Documentation**][docs]
- [**Wiki**][wiki] (includes [tutorials][tutorials])
- **Discord:** [pret][discord]
- **IRC:** [freenode#pret][irc]

Other disassembly projects:

- [**Pokémon Red/Blue**][pokered]
- [**Pokémon Yellow**][pokeyellow]
- [**Pokémon Gold**][pokegold]
- [**Pokémon Pinball**][pokepinball]
- [**Pokémon TCG**][poketcg]
- [**Pokémon Ruby**][pokeruby]
- [**Pokémon Fire Red**][pokefirered]
- [**Pokémon Emerald**][pokeemerald]

[pokered]: https://github.com/pret/pokered
[pokeyellow]: https://github.com/pret/pokeyellow
[pokegold]: https://github.com/pret/pokegold
[pokepinball]: https://github.com/pret/pokepinball
[poketcg]: https://github.com/pret/poketcg
[pokeruby]: https://github.com/pret/pokeruby
[pokefirered]: https://github.com/pret/pokefirered
[pokeemerald]: https://github.com/pret/pokeemerald
[docs]: https://pret.github.io/pokecrystal/
[wiki]: https://github.com/pret/pokecrystal/wiki
[tutorials]: https://github.com/pret/pokecrystal/wiki/Tutorials
[discord]: https://discord.gg/d5dubZ3
[irc]: https://kiwiirc.com/client/irc.freenode.net/?#pret
[travis]: https://travis-ci.org/pret/pokecrystal
[travis-badge]: https://travis-ci.org/pret/pokecrystal.svg?branch=master
