function rse_sum(a)
    s = 0
    for i = 1:length(a)
        s = s + a[i]
    end
    return s
end

function rse_mean(a)
    rse_sum(a) / length(a)
end

function rse_std(a)
    da2 = [(a[i] - rse_mean(a))^2 for i = 1:length(a)]
    std = sqrt(rse_sum(da2 / (length(a) - 1)))
end

function rse_tstat(a; σ = rse_std(a))
    rse_mean(a) * √length(a) / σ
end


struct StatResult
    x::Vector
    n::Int
    std::Float64
    tvalue::Float64
end


function rse_stat(x)
    return StatResult(x, length(x), rse_std(x), rse_tstat(x))
end

Base.length(stat::StatResult) = stat.n


function printOwner()
    println("https://github.com/marcelojbp")
end
