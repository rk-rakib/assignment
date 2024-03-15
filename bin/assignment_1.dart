class Media {
  play(){
    print('Playing media...');
  }
}

class Song extends Media{
  String artist;
  Song(this.artist);
  @override
  play() {
    print('playing song by $artist');
  }
}

void main(){
  Song artistes = Song('RK');

  artistes.play();
}