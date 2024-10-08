// for unresolved external symbols : 
// https://stackoverflow.com/questions/73824767/stbi-write-png-external-symbol-not-solved
#define STBI_MSC_SECURE_CRT
#define STB_IMAGE_WRITE_IMPLEMENTATION
#define STB_IMAGE_IMPLEMENTATION
#define CUASTAR_DEBUG
#define CUASTAR_IMPLEMENTATION
#include "cuAstar/cuAStar.hpp"

int main(){
    using T = float;
    using NodeType = Node3d<T>;
    const int numNodes = 5;

    AstarPlanner<Node3d<T>,T> planner("Area_1_Site_93340.ply");
    planner.visualize2dPointCloud("testfig2.png");

    return 0; 
}