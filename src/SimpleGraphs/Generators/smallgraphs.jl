#####################
# STATIC SMALL GRAPHS
#####################

SimpleGraph(gen::SmallGraph) = SimpleGraph{Int}(gen)

diamond_graph(T=Int) = SimpleGraph(SimpleEdge{T}.([(1, 2), (1, 3), (2, 3), (2, 4), (3, 4)]) )
SimpleGraph{T}(::Diamond) where {T} = diamond_graph(T)

bull_graph(T=Int) = SimpleGraph(SimpleEdge{T}.([(1, 2), (1, 3), (2, 3), (2, 4), (3, 5)]))
SimpleGraph{T}(::Bull) where {T} = bull_graph(T)

function chvatal_graph(T=Int)
    e = SimpleEdge{T}.([
        (1, 2), (1, 5), (1, 7), (1, 10),
        (2, 3), (2, 6), (2, 8),
        (3, 4), (3, 7), (3, 9),
        (4, 5), (4, 8), (4, 10),
        (5, 6), (5, 9),
        (6, 11), (6, 12),
        (7, 11), (7, 12),
        (8, 9), (8, 12),
        (9, 11),
        (10, 11), (10, 12)
    ])
    return SimpleGraph(e)
end
SimpleGraph{T}(::Chvatal) where {T} = chvatal_graph(T)

function cubical_graph(T=Int)
    e = SimpleEdge{T}.([
    (1, 2), (1, 4), (1, 5),
    (2, 3), (2, 8),
    (3, 4), (3, 7),
    (4, 6), (5, 6), (5, 8),
    (6, 7),
    (7, 8)
    ])
    return SimpleGraph(e)
end
SimpleGraph{T}(::Cubical) where {T} = cubical_graph(T)

function desargues_graph(T=Int)
    e = SimpleEdge{T}.([
    (1, 2), (1, 6), (1, 20),
    (2, 3), (2, 17),
    (3, 4), (3, 12),
    (4, 5), (4, 15),
    (5, 6), (5, 10),
    (6, 7),
    (7, 8), (7, 16),
    (8, 9), (8, 19),
    (9, 10), (9, 14),
    (10, 11),
    (11, 12), (11, 20),
    (12, 13),
    (13, 14), (13, 18),
    (14, 15),
    (15, 16),
    (16, 17),
    (17, 18),
    (18, 19),
    (19, 20)
   ])
    return SimpleGraph(e)
end
SimpleGraph{T}(::Desargues) where {T} = desargues_graph(T)

function dodecahedral_graph(T=Int)
    e = SimpleEdge{T}.([
    (1, 2), (1, 11), (1, 20),
    (2, 3), (2, 9),
    (3, 4), (3, 7),
    (4, 5), (4, 20),
    (5, 6), (5, 18),
    (6, 7), (6, 16),
    (7, 8),
    (8, 9), (8, 15),
    (9, 10),
    (10, 11), (10, 14),
    (11, 12),
    (12, 13), (12, 19),
    (13, 14), (13, 17),
    (14, 15),
    (15, 16),
    (16, 17),
    (17, 18),
    (18, 19),
    (19, 20)
    ])
    return SimpleGraph(e)
end
SimpleGraph{T}(::Dodecahedral) where {T} = dodecahedral_graph(T)

function frucht_graph(T=Int)
    e = SimpleEdge{T}.([
    (1, 2), (1, 7), (1, 8),
    (2, 3), (2, 8),
    (3, 4), (3, 9),
    (4, 5), (4, 10),
    (5, 6), (5, 10),
    (6, 7), (6, 11),
    (7, 11),
    (8, 12),
    (9, 10), (9, 12),
    (11, 12)
    ])
    return SimpleGraph(e)
end

SimpleGraph{T}(::Frucht) where {T} = frucht_graph(T)

function heawood_graph(T=Int)
    e = SimpleEdge{T}.([
    (1, 2), (1, 6), (1, 14),
    (2, 3), (2, 11),
    (3, 4), (3, 8),
    (4, 5), (4, 13),
    (5, 6), (5, 10),
    (6, 7),
    (7, 8), (7, 12),
    (8, 9),
    (9, 10), (9, 14),
    (10, 11),
    (11, 12),
    (12, 13),
    (13, 14)
    ])
    return SimpleGraph(e)
end
SimpleGraph{T}(::Heawood) where {T} = heawood_graph(T)

function house_graph(T=Int)
    e = SimpleEdge{T}.([(1, 2), (1, 3), (2, 4), (3, 4), (3, 5), (4, 5)])
    return SimpleGraph(e)
end
SimpleGraph{T}(::House) where {T} = house_graph(T)

function house_x_graph(T=Int)
    g = house_graph(T)
    add_edge!(g, SimpleEdge{T}(1, 4))
    add_edge!(g, SimpleEdge{T}(2, 3))
    return g
end
SimpleGraph{T}(::HouseX) where {T} = house_x_graph(T)

function icosahedral_graph(T=Int)
    e = SimpleEdge{T}.([
    (1, 2), (1, 6), (1, 8), (1, 9), (1, 12),
    (2, 3), (2, 6), (2, 7), (2, 9),
    (3, 4), (3, 7), (3, 9), (3, 10),
    (4, 5), (4, 7), (4, 10), (4, 11),
    (5, 6), (5, 7), (5, 11), (5, 12),
    (6, 7), (6, 12),
    (8, 9), (8, 10), (8, 11), (8, 12),
    (9, 10),
    (10, 11), (11, 12)
    ])
    return SimpleGraph(e)
end
SimpleGraph{T}(::Icosahedral) where {T} = icosahedral_graph(T)

function karate_graph(T=Int)
    e = SimpleEdge{T}.([
         (1, 2),   (1, 3),   (1, 4),   (1, 5),   (1, 6),   (1, 7),
         (1, 8),   (1, 9),   (1, 11),  (1, 12),  (1, 13),  (1, 14),
         (1, 18),  (1, 20),  (1, 22),  (1, 32),  (2, 3),   (2, 4),
         (2, 8),   (2, 14),  (2, 18),  (2, 20),  (2, 22),  (2, 31),
         (3, 4),   (3, 8),   (3, 9),   (3, 10),  (3, 14),  (3, 28),
         (3, 29),  (3, 33),  (4, 8),   (4, 13) , (4, 14),  (5, 7),
         (5, 11),  (6, 7),   (6, 11),  (6, 17) , (7, 17),  (9, 31),
         (9, 33),  (9, 34),  (10, 34), (14, 34), (15, 33), (15, 34),
         (16, 33), (16, 34), (19, 33), (19, 34), (20, 34), (21, 33),
         (21, 34), (23, 33), (23, 34), (24, 26), (24, 28), (24, 30),
         (24, 33), (24, 34), (25, 26), (25, 28), (25, 32), (26, 32),
         (27, 30), (27, 34), (28, 34), (29, 32), (29, 34), (30, 33),
         (30, 34), (31, 33), (31, 34), (32, 33), (32, 34), (33, 34),
    ])
    return SimpleGraph(e)
end
SimpleGraph{T}(::Karate) where {T}= karate_graph(T)

function krackhardt_kite_graph(T=Int)
    e = SimpleEdge{T}.([
    (1, 2), (1, 3), (1, 4), (1, 6),
    (2, 4), (2, 5), (2, 7),
    (3, 4), (3, 6),
    (4, 5), (4, 6), (4, 7),
    (5, 7),
    (6, 7), (6, 8),
    (7, 8),
    (8, 9),
    (9, 10)
    ])
    return SimpleGraph(e)
end
SimpleGraph{T}(::KrackhardtKite) where {T} = krackhardt_kite_graph(T)


function moebius_kantor_graph(T=Int)
    e = SimpleEdge{T}.([
    (1, 2), (1, 6), (1, 16),
    (2, 3), (2, 13),
    (3, 4), (3, 8),
    (4, 5), (4, 15),
    (5, 6), (5, 10),
    (6, 7),
    (7, 8), (7, 12),
    (8, 9),
    (9, 10), (9, 14),
    (10, 11),
    (11, 12), (11, 16),
    (12, 13),
    (13, 14),
    (14, 15),
    (15, 16)
    ])
    return SimpleGraph(e)
end
SimpleGraph{T}(::MoebiusKantor) where {T} = moebius_kantor_graph(T)


function octahedral_graph(T=Int)
    e = SimpleEdge{T}.([
    (1, 2), (1, 3), (1, 4), (1, 5),
    (2, 3), (2, 4), (2, 6),
    (3, 5), (3, 6),
    (4, 5), (4, 6),
    (5, 6)
    ])
    return SimpleGraph(e)
end
SimpleGraph{T}(::Octahedral) where {T} = octahedral_graph(T)


function pappus_graph(T=Int)
    e = SimpleEdge{T}.([
    (1, 2), (1, 6), (1, 18),
    (2, 3), (2, 9),
    (3, 4), (3, 14),
    (4, 5), (4, 11),
    (5, 6), (5, 16),
    (6, 7),
    (7, 8), (7, 12),
    (8, 9), (8, 15),
    (9, 10),
    (10, 11), (10, 17),
    (11, 12),
    (12, 13),
    (13, 14), (13, 18),
    (14, 15),
    (15, 16),
    (16, 17),
    (17, 18)
    ])
    return SimpleGraph(e)
end
SimpleGraph{T}(::Pappus) where {T} = pappus_graph(T)

function petersen_graph(T=Int)
    e = SimpleEdge{T}.([
    (1, 2), (1, 5), (1, 6),
    (2, 3), (2, 7),
    (3, 4), (3, 8),
    (4, 5), (4, 9),
    (5, 10),
    (6, 8), (6, 9),
    (7, 9), (7, 10),
    (8, 10)
    ])
    return SimpleGraph(e)
end
SimpleGraph{T}(::Petersen) where {T} = petersen_graph(T)

function sedgewick_maze_graph(T=Int)
    e = SimpleEdge{T}.([
    (1, 3),
    (1, 6), (1, 8),
    (2, 8),
    (3, 7),
    (4, 5), (4, 6),
    (5, 6), (5, 7), (5, 8)
    ])
    return SimpleGraph(e)
end
SimpleGraph{T}(::SedgewickMaze) where {T} = sedgewick_maze_graph(T)


tetrahedral_graph(T=Int) =
SimpleGraph(SimpleEdge{T}.([(1, 2), (1, 3), (1, 4), (2, 3), (2, 4), (3, 4)]))

SimpleGraph{T}(::Tetrahedral) where {T} = tetrahedral_graph(T)

function truncated_cube_graph(T=Int)
    e = SimpleEdge{T}.([
    (1, 2), (1, 3), (1, 5),
    (2, 12), (2, 15),
    (3, 4), (3, 5),
    (4, 7), (4, 9),
    (5, 6),
    (6, 17), (6, 19),
    (7, 8), (7, 9),
    (8, 11), (8, 13),
    (9, 10),
    (10, 18), (10, 21),
    (11, 12), (11, 13),
    (12, 15), (13, 14),
    (14, 22), (14, 23),
    (15, 16),
    (16, 20), (16, 24),
    (17, 18), (17, 19),
    (18, 21),
    (19, 20),
    (20, 24),
    (21, 22),
    (22, 23),
    (23, 24)
    ])
    return SimpleGraph(e)
end
SimpleGraph{T}(::TruncatedCube) where {T} = truncated_cube_graph(T)


function truncated_tetrahedron_graph(T=Int)
    e = SimpleEdge{T}.([
    (1, 2), (1, 3), (1, 10),
    (2, 3), (2, 7),
    (3, 4),
    (4, 5), (4, 12),
    (5, 6), (5, 12),
    (6, 7), (6, 8),
    (7, 8),
    (8, 9),
    (9, 10), (9, 11),
    (10, 11),
    (11, 12)
    ])
    return SimpleGraph(e)
end

function truncated_tetrahedron_digraph(T=Int)
    e = SimpleEdge{T}.([
    (1, 2), (1, 3), (1, 10),
    (2, 3), (2, 7),
    (3, 4),
    (4, 5), (4, 12),
    (5, 6), (5, 12),
    (6, 7), (6, 8),
    (7, 8),
    (8, 9),
    (9, 10), (9, 11),
    (10, 11),
    (11, 12)
    ])
    return SimpleDiGraph(e)
end
SimpleGraph{T}(::TruncatedTetrahedron) where {T} = truncated_tetrahedron_graph(T)
SimpleDiGraph{T}(::TruncatedTetrahedron) where {T} = truncated_tetrahedron_digraph(T)
SimpleDiGraph(::TruncatedTetrahedron) = truncated_tetrahedron_digraph()

function tutte_graph(T=Int)
    e = SimpleEdge{T}.([
    (1, 2), (1, 3), (1, 4),
    (2, 5), (2, 27),
    (3, 11), (3, 12),
    (4, 19), (4, 20),
    (5, 6), (5, 34),
    (6, 7), (6, 30),
    (7, 8), (7, 28),
    (8, 9), (8, 15),
    (9, 10), (9, 39),
    (10, 11), (10, 38),
    (11, 40),
    (12, 13), (12, 40),
    (13, 14), (13, 36),
    (14, 15), (14, 16),
    (15, 35),
    (16, 17), (16, 23),
    (17, 18), (17, 45),
    (18, 19), (18, 44),
    (19, 46),
    (20, 21), (20, 46),
    (21, 22), (21, 42),
    (22, 23), (22, 24),
    (23, 41),
    (24, 25), (24, 28),
    (25, 26), (25, 33),
    (26, 27), (26, 32),
    (27, 34),
    (28, 29),
    (29, 30), (29, 33),
    (30, 31),
    (31, 32), (31, 34),
    (32, 33),
    (35, 36), (35, 39),
    (36, 37),
    (37, 38), (37, 40),
    (38, 39),
    (41, 42), (41, 45),
    (42, 43),
    (43, 44), (43, 46),
    (44, 45)
    ])
    return SimpleGraph(e)
end
SimpleGraph{T}(::Tutte) where {T} = tutte_graph(T)