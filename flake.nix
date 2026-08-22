{
  outputs = { self, flake-utils, nixpkgs }:
    flake-utils.lib.eachDefaultSystem(system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        devShells.default = pkgs.mkShell {
          name = "erlang-playground";

          packages = [
            pkgs.beam29Packages.erlang
          ];

          shellHook = ''
            export PROJECT_ROOT="$(git rev-parse --show-toplevel)"
            export PS1="($name)\n$PS1"
          '';
        };
      }
    );
}
