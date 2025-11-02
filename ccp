#include <iostream>
#include <vector>
#include <random>
#include <algorithm>
#include <string>

// 模拟音乐数据结构
struct Music {
    std::string title;
    std::string filePath;
};

// 生成随机音乐列表
std::vector<Music> getRandomMusicList(const std::vector<Music>& allMusic, int count) {
    std::vector<Music> result = allMusic;
    
    // 使用随机设备生成种子
    std::random_device rd;
    std::mt19937 g(rd());
    
    // 随机打乱音乐列表
    std::shuffle(result.begin(), result.end(), g);
    
    // 如果请求的数量大于列表大小，返回整个列表
    if (count > result.size()) {
        count = result.size();
    }
    
    // 返回前count首音乐
    return std::vector<Music>(result.begin(), result.begin() + count);
}

int main() {
    // 模拟音乐库
    std::vector<Music> musicLibrary = {
        {"Song 1", "music/song1.mp3"},
        {"Song 2", "music/song2.mp3"},
        {"Song 3", "music/song3.mp3"},
        {"Song 4", "music/song4.mp3"},
        {"Song 5", "music/song5.mp3"}
    };
    
    // 获取3首随机音乐
    std::vector<Music> randomMusic = getRandom
