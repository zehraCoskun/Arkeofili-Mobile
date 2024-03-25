import 'package:arkeofili_mobile/data/dummy_data.dart';
import 'package:arkeofili_mobile/model/post_model.dart';

enum Categories {
  archaeology,
  anthropology,
  palaeontology,
  evolution,
  culturalHeritage,
  specialFile,
  list,
  answers,
}

String getCategoryString(Categories category) {
  switch (category) {
    case Categories.archaeology:
      return "Arkeoloji";
    case Categories.anthropology:
      return "Antropoloji";
    case Categories.palaeontology:
      return "Paleontoloji";
    case Categories.evolution:
      return "Evrim";
    case Categories.culturalHeritage:
      return "Kültürel Miras";
    case Categories.specialFile:
      return "Özel Dosya";
    case Categories.list:
      return "Liste";
    case Categories.answers:
      return "Soru & Cevap";
  }
}

String getCategoryRouteName(Categories category) {
  return "/${category.toString().split('.').last}";
}


Map<Categories, List<PostModel>> categorizedPosts = {};
void initializeCategories() {
  for (var post in dummyData) {
    categorizedPosts.putIfAbsent(post.category, () => []);
    categorizedPosts[post.category]!.add(post);
  }
}
/* putIfAbsent yöntemi, belirli bir anahtarın (post.category), değeri (List<PostModel>) henüz haritada yoksa, belirtilen bir değeri ([] - boş bir liste) bu anahtarla ilişkilendirir. Eğer belirtilen anahtar zaten haritada varsa, hiçbir şey yapmaz. */