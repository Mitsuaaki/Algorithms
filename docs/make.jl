using Documenter, Algorithms

# push!(LOAD_PATH, "../src/")
# DocMeta.setdocmeta!(Algorithms, :DocTestSetup, :(using Algorithms); recursive=true)

makedocs(;
    format = Documenter.HTML(
        prettyurls = get(ENV, "CI", "false") == "true",
        canonical = "https://mitsuaaki.github.io/Algorithms/stable/",
        assets = String["assets/favicon.ico"],
        highlights = ["yaml"]
    ),

    clean = false,
    modules = [Algorithms],

    sitename = "Algorithms",
    authors = "Mitsuaki",

    pages = [
        "Home" => "index.md",
        "Manual" => Any[
            "Maths" => "manual/maths.md",
            # "BackTracking" => "manual/back-tracking.md",
            # "Bit Manipulation" => "manual/bit-manipulation.md",
            # "Ciphers" => "manual/ciphers.md",
            # "Data Structures" => "manual/data-structures.md",
            # "Graph" => "manual/graph.md",
            # "Hashing" => "manual/hashing.md",
            # "Machine Learning" => "manuel/machine-learning.md",
            # "Numerial & Logical methods" => "manuel/numerical-logical-methods",
            # "Operations on data-structures" => "manual/operations-data-structures.md",
            # "Sorting" => "manual/sorting.md",
            # "Search" => "manual/search.md",
            # "Strings" => "manual/strings.md"
        ]
    ]
)

deploydocs(; repo = "github.com/Mitsuaaki/Algorithms.git", target = "build", push_preview = true, devbranch = "main")