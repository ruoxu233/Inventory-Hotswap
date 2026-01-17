{
  pkgs ? import <nixpkgs> { },
}:

pkgs.mkShell {
  buildInputs = with pkgs; [
    jdk21
    git
  ];

  shellHook = ''
    export JAVA_HOME=${pkgs.jdk21}
    export PATH="$JAVA_HOME/bin:$PATH"
    echo "Java version:"
    java -version
    echo ""
    echo "Ready to build NeoForge mod. Run './gradlew build' to build the project."
  '';
}
