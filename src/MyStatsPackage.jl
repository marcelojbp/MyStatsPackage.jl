module MyStatsPackage
    using ProgressMeter
    include("statistic_functions.jl")
    export rse_stat
    export rse_std
    export rse_sum
    export rse_mean
    export rse_tstat
    export printOwner
end # module MyStatsPackage
