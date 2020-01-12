class Article{
  final String title;
  final String byline;
  final String url;
  final String imageUrl;
  final String publishedDate;
  final String summary;

  Article({
    this.title,
    this.byline,
    this.url,
    this.imageUrl,
    this.publishedDate,
    this.summary,
  });

  factory Article.fromMap(Map<String,dynamic>map){
    return Article{
      title: map['title'],
      byline:map['byline'],
      url: map['multimedia'].length>0,
      imageUrl:map['multimedia'].length >0,
      ? map['multitmedia'][3]['url'],
      :'httpsL//images.unslash.com'
      publishedDate: map['published_date'],
      summary: map['abstract'],
    }
  }
 
}