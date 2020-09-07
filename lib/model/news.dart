part of 'models.dart';
class News {
  News({
    this.id,
    this.date,
    this.dateGmt,
    this.guid,
    this.modified,
    this.modifiedGmt,
    this.slug,
    this.status,
    this.type,
    this.link,
    this.title,
    this.content,
    this.excerpt,
    this.author,
    this.featuredMedia,
    this.commentStatus,
    this.pingStatus,
    this.sticky,
    this.template,
    this.format,
    this.meta,
    this.categories,
    this.tags,
    this.yoastHead,
    this.links,
  });

  int id;
  DateTime date;
  DateTime dateGmt;
  Guid guid;
  DateTime modified;
  DateTime modifiedGmt;
  String slug;
  StatusEnum status;
  Type type;
  String link;
  String title;
  String content;
  String excerpt;
  int author;
  int featuredMedia;
  Status commentStatus;
  Status pingStatus;
  bool sticky;
  String template;
  Format format;
  List<dynamic> meta;
  List<int> categories;
//  String categories;
  List<int> tags;
  String yoastHead;
  Links links;


  factory News.fromRawJson(String str) => News.fromJson(json.decode(str));


  String toRawJson() => json.encode(toJson());

  factory News.fromJson(Map<String, dynamic> json) => News(
    id: json["id"],
    date: DateTime.parse(json["date"]),
    dateGmt: DateTime.parse(json["date_gmt"]),
    guid: Guid.fromJson(json["guid"]),
    modified: DateTime.parse(json["modified"]),
    modifiedGmt: DateTime.parse(json["modified_gmt"]),
    slug: json["slug"],
    status: statusEnumValues.map[json["status"]],
    type: typeValues.map[json["type"]],
    link: json["link"],
    title: json["title"]["rendered"],
    content: json["content"]["rendered"],
    excerpt: json["excerpt"]["rendered"],
    author: json["author"],
    featuredMedia: json["featured_media"],
    commentStatus: statusValues.map[json["comment_status"]],
    pingStatus: statusValues.map[json["ping_status"]],
    sticky: json["sticky"],
    template: json["template"],
    format: formatValues.map[json["format"]],
    meta: List<dynamic>.from(json["meta"].map((x) => x)),
//    categories: json["categories"],
    categories: List<dynamic>.from(json["categories"].map((x) => x)),
    tags: List<int>.from(json["tags"].map((x) => x)),
    yoastHead: json["yoast_head"],
    links: Links.fromJson(json["_links"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "date": date.toIso8601String(),
    "date_gmt": dateGmt.toIso8601String(),
    "guid": guid.toJson(),
    "modified": modified.toIso8601String(),
    "modified_gmt": modifiedGmt.toIso8601String(),
    "slug": slug,
    "status": statusEnumValues.reverse[status],
    "type": typeValues.reverse[type],
    "link": link,
    "title": title,
    "content": content,
    "excerpt": excerpt,
    "author": author,
    "featured_media": featuredMedia,
    "comment_status": statusValues.reverse[commentStatus],
    "ping_status": statusValues.reverse[pingStatus],
    "sticky": sticky,
    "template": template,
    "format": formatValues.reverse[format],
    "meta": List<dynamic>.from(meta.map((x) => x)),
//    "categories": categories,
    "categories": List<dynamic>.from(categories.map((x) => x)),
    "tags": List<dynamic>.from(tags.map((x) => x)),
    "yoast_head": yoastHead,
    "_links": links.toJson(),
  };
}



enum Status { CLOSED }

final statusValues = EnumValues({
  "closed": Status.CLOSED
});

class Content {
  Content({
    this.rendered,
    this.protected,
  });

  String rendered;
  bool protected;

  factory Content.fromRawJson(String str) => Content.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Content.fromJson(Map<String, dynamic> json) => Content(
    rendered: json["rendered"],
    protected: json["protected"],
  );

  Map<String, dynamic> toJson() => {
    "rendered": rendered,
    "protected": protected,
  };
}

enum Format { QUOTE, STANDARD }

final formatValues = EnumValues({
  "quote": Format.QUOTE,
  "standard": Format.STANDARD
});

class Guid {
  Guid({
    this.rendered,
  });

  String rendered;

  factory Guid.fromRawJson(String str) => Guid.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Guid.fromJson(Map<String, dynamic> json) => Guid(
    rendered: json["rendered"],
  );

  Map<String, dynamic> toJson() => {
    "rendered": rendered,
  };
}

class Links {
  Links({
    this.self,
    this.collection,
    this.about,
    this.author,
    this.replies,
    this.versionHistory,
    this.predecessorVersion,
    this.wpFeaturedmedia,
    this.wpAttachment,
    this.wpTerm,
    this.curies,
  });

  List<About> self;
  List<About> collection;
  List<About> about;
  List<Author> author;
  List<Author> replies;
  List<VersionHistory> versionHistory;
  List<PredecessorVersion> predecessorVersion;
  List<Author> wpFeaturedmedia;
  List<About> wpAttachment;
  List<WpTerm> wpTerm;
  List<Cury> curies;

  factory Links.fromRawJson(String str) => Links.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Links.fromJson(Map<String, dynamic> json) => Links(
    self: List<About>.from(json["self"].map((x) => About.fromJson(x))),
    collection: List<About>.from(json["collection"].map((x) => About.fromJson(x))),
    about: List<About>.from(json["about"].map((x) => About.fromJson(x))),
    author: List<Author>.from(json["author"].map((x) => Author.fromJson(x))),
    replies: List<Author>.from(json["replies"].map((x) => Author.fromJson(x))),
    versionHistory: List<VersionHistory>.from(json["version-history"].map((x) => VersionHistory.fromJson(x))),
    predecessorVersion: List<PredecessorVersion>.from(json["predecessor-version"].map((x) => PredecessorVersion.fromJson(x))),
    wpFeaturedmedia: List<Author>.from(json["wp:featuredmedia"].map((x) => Author.fromJson(x))),
    wpAttachment: List<About>.from(json["wp:attachment"].map((x) => About.fromJson(x))),
    wpTerm: List<WpTerm>.from(json["wp:term"].map((x) => WpTerm.fromJson(x))),
    curies: List<Cury>.from(json["curies"].map((x) => Cury.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "self": List<dynamic>.from(self.map((x) => x.toJson())),
    "collection": List<dynamic>.from(collection.map((x) => x.toJson())),
    "about": List<dynamic>.from(about.map((x) => x.toJson())),
    "author": List<dynamic>.from(author.map((x) => x.toJson())),
    "replies": List<dynamic>.from(replies.map((x) => x.toJson())),
    "version-history": List<dynamic>.from(versionHistory.map((x) => x.toJson())),
    "predecessor-version": List<dynamic>.from(predecessorVersion.map((x) => x.toJson())),
    "wp:featuredmedia": List<dynamic>.from(wpFeaturedmedia.map((x) => x.toJson())),
    "wp:attachment": List<dynamic>.from(wpAttachment.map((x) => x.toJson())),
    "wp:term": List<dynamic>.from(wpTerm.map((x) => x.toJson())),
    "curies": List<dynamic>.from(curies.map((x) => x.toJson())),
  };
}

class About {
  About({
    this.href,
  });

  String href;

  factory About.fromRawJson(String str) => About.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory About.fromJson(Map<String, dynamic> json) => About(
    href: json["href"],
  );

  Map<String, dynamic> toJson() => {
    "href": href,
  };
}

class Author {
  Author({
    this.embeddable,
    this.href,
  });

  bool embeddable;
  String href;

  factory Author.fromRawJson(String str) => Author.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Author.fromJson(Map<String, dynamic> json) => Author(
    embeddable: json["embeddable"],
    href: json["href"],
  );

  Map<String, dynamic> toJson() => {
    "embeddable": embeddable,
    "href": href,
  };
}

class Cury {
  Cury({
    this.name,
    this.href,
    this.templated,
  });

  Name name;
  Href href;
  bool templated;

  factory Cury.fromRawJson(String str) => Cury.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Cury.fromJson(Map<String, dynamic> json) => Cury(
    name: nameValues.map[json["name"]],
    href: hrefValues.map[json["href"]],
    templated: json["templated"],
  );

  Map<String, dynamic> toJson() => {
    "name": nameValues.reverse[name],
    "href": hrefValues.reverse[href],
    "templated": templated,
  };
}

enum Href { HTTPS_API_W_ORG_REL }

final hrefValues = EnumValues({
  "https://api.w.org/{rel}": Href.HTTPS_API_W_ORG_REL
});

enum Name { WP }

final nameValues = EnumValues({
  "wp": Name.WP
});

class PredecessorVersion {
  PredecessorVersion({
    this.id,
    this.href,
  });

  int id;
  String href;

  factory PredecessorVersion.fromRawJson(String str) => PredecessorVersion.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PredecessorVersion.fromJson(Map<String, dynamic> json) => PredecessorVersion(
    id: json["id"],
    href: json["href"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "href": href,
  };
}

class VersionHistory {
  VersionHistory({
    this.count,
    this.href,
  });

  int count;
  String href;

  factory VersionHistory.fromRawJson(String str) => VersionHistory.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VersionHistory.fromJson(Map<String, dynamic> json) => VersionHistory(
    count: json["count"],
    href: json["href"],
  );

  Map<String, dynamic> toJson() => {
    "count": count,
    "href": href,
  };
}

class WpTerm {
  WpTerm({
    this.taxonomy,
    this.embeddable,
    this.href,
  });

  Taxonomy taxonomy;
  bool embeddable;
  String href;

  factory WpTerm.fromRawJson(String str) => WpTerm.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WpTerm.fromJson(Map<String, dynamic> json) => WpTerm(
    taxonomy: taxonomyValues.map[json["taxonomy"]],
    embeddable: json["embeddable"],
    href: json["href"],
  );

  Map<String, dynamic> toJson() => {
    "taxonomy": taxonomyValues.reverse[taxonomy],
    "embeddable": embeddable,
    "href": href,
  };
}

enum Taxonomy { CATEGORY, POST_TAG }

final taxonomyValues = EnumValues({
  "category": Taxonomy.CATEGORY,
  "post_tag": Taxonomy.POST_TAG
});

enum StatusEnum { PUBLISH }

final statusEnumValues = EnumValues({
  "publish": StatusEnum.PUBLISH
});

enum Type { POST }

final typeValues = EnumValues({
  "post": Type.POST
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}