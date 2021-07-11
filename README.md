# hiraeth

Hiraeth is a collection of small packages covering all aspects of modern web development with TypeScript. It's inspired by my experience writing and working on Elm-related projects. I don't recommend using the stack in production, but if you have a side project where you'd like the simplicity of Elm but the ecosystem of TypeScript, this might be the project for you.

So far, the Hiraeth collection contains:

-   A Pytest-style test runner for TS called [Bach](https://github.com/eeue56/bach), supporting async and sync functions
-   A Pytest-style benchmark runner for TS called [Mainc](https://github.com/eeue56/mainc), supporting async and sync functions
-   An Elm-style documention generator that looks in your tsconfig to generate a markdown file with documentation per module called [geiriadur](https://github.com/eeue56/geiriadur)
-   A HTML library similar to Elm's called [Coed](https://github.com/eeue56/coed), built on a small virtual-dom
-   A library with functional programming datastructures called [ts-core](https://github.com/eeue56/ts-core/)
-   A fork of [Prettier](https://github.com/eeue56/prettier) that adds some whitespace to array literals
-   An implementation of Elm-style decoders called [Adeilad](https://github.com/eeue56/adeilad/)
-   A package that tells you the raw typescript type for a json file or endpoint called [Amddiffyn](https://github.com/eeue56/amddiffyn)
-   A flag parsing library in Typescript called [Baner](https://github.com/eeue56/baner)

## Context

Hiraeth[0] is a Welsh word, meaning a sense of loss, nostaglia, and longing for something that used to be or could've been. I chose this name to reflect my longing for simplicity that I once found in Elm. Elm's still a great language, don't get me wrong, but I simply end up using Typescript in more work projects than I do Elm. So to me, Hiraeth will be a home-from-home. I have two naming standards: cutesy, Welsh words (e.g bach, coed) as project names when I think the project is novel but better alternatives exist, and to-the point explicit names (e.g ts-core) when I think a project is useful outside of Hiraeth.

[0] - English pronouncation might be he-r-aith. Comes from a portmanteau of "hir" => length, long, and "aeth" => to go, went.
