AdminUser.create!(
  email: 'admin@example.com',
  password: 'password',
  password_confirmation: 'password',
  roles: 'super_admin'
)
AdminUser.create!(
  email: 'book_editor@example.com',
  password: 'password',
  password_confirmation: 'password',
  roles: 'book_editor'
)
AdminUser.create!(
  email: 'group_editor@example.com',
  password: 'password',
  password_confirmation: 'password',
  roles: 'group_editor'
)

group_novel = Group.create!(title: 'Novel')
group_adventure = Group.create!(title: 'Adventure')
group_lit_real = Group.create!(title: 'Literary realism')
group_fiction = Group.create!(title: 'Fiction')

Book.create!(
  title: 'Good Omens',
  authors: [
    Author.create!(name: 'Neil Gaiman', bio: 'Lorem lorem'),
    Author.create!(name: 'Terry Pratchett', bio: 'Lorem ipsum')
  ],
  groups: [group_novel],
  description: 'Few novels have as devoted a cult following as GOOD OMENS—the funniest book ever written about Armageddon. Desperate to save humanity and the world they love, a snarky demon and a fastidious angel decide to join forces and stop the upcoming Rapture—in between their witty quips about pop culture.'
)

Book.create!(
  title: 'Heads You Lose',
  authors: [
    Author.create!(name: 'Lisa Lutz', bio: 'Lorem lorem'),
    Author.create!(name: 'David Hayward', bio: 'Lorem ipsum')
  ],
  groups: [group_novel],
  description: 'When two siblings stumble upon a dead body on the property that houses their marijuana operation, they decided to move it and let someone else deal with it. But then the body reappears. Coauthors and real-life exes Lisa Lutz and David Hayward wrote alternating chapters in this charming and irreverent mystery.'
)

Book.create!(
  title: 'Between the Lines',
  authors: [
    Author.create!(name: 'Jodi Picoult', bio: 'Lorem lorem'),
    Author.create!(name: 'Samantha van Leer', bio: 'Lorem ipsum')
  ],
  groups: [group_novel],
  description: 'Bestselling author Jodi Picoult joins forces with her teenage daughter in crafting this charming modern-day fairy tale. A shy bookworm spends all her time in the school library and falls for a storybook prince... who may not be as one-dimensional as she thinks.'
)

jack_london = Author.create!(name: 'Jack London', bio: 'John Griffith London (born John Griffith Chaney; January 12, 1876 – November 22, 1916) was an American novelist, journalist and social activist. A pioneer of commercial fiction and American magazines, he was one of the first American authors to become an international celebrity and earn a large fortune from writing. He was also an innovator in the genre that would later become known as science fiction.')
Book.create!(
  title: 'White Fang',
  authors: [jack_london],
  groups: [group_adventure, group_fiction],
  description: 'White Fang is a novel by American author Jack London (1876–1916) — and the name of the books eponymous character, a wild wolfdog. First serialized in Outing magazine between May and October 1906, it was published in book form in October 1906. The story details White Fangs journey to domestication in Yukon Territory and the Northwest Territories during the 1890s Klondike Gold Rush. It is a companion novel (and a thematic mirror) to Londons best-known work, The Call of the Wild (1903), which is about a kidnapped, domesticated dog embracing his wild ancestry to survive and thrive in the wild.'
)
Book.create!(
  title: 'Martin Eden',
  authors: [jack_london],
  groups: [group_novel],
  description: 'Martin Eden is a 1909 novel by American author Jack London about a young proletarian autodidact struggling to become a writer. It was first serialized in The Pacific Monthly magazine from September 1908 to September 1909 and then published in book form by Macmillan in September 1909.'
)
Book.create!(
  title: 'The Sea-Wolf',
  authors: [jack_london],
  groups: [group_adventure],
  description: 'The Sea-Wolf is a 1904 psychological adventure novel by American writer Jack London. The books protagonist, Humphrey Van Weyden, is a literary critic who is a survivor of an ocean collision and who comes under the dominance of Wolf Larsen, the powerful and amoral sea captain who rescues him. Its first printing of forty thousand copies was immediately sold out before publication on the strength of Londons previous The Call of the Wild.[1] Ambrose Bierce wrote, "The great thing—and it is among the greatest of things—is that tremendous creation, Wolf Larsen... the hewing out and setting up of such a figure is enough for a man to do in one lifetime... The love element, with its absurd suppressions, and impossible proprieties, is awful."'
)

mark_twain = Author.create!(name: 'Mark Twain', bio: 'Samuel Langhorne Clemens (November 30, 1835 – April 21, 1910),[1] known by his pen name Mark Twain, was an American writer, humorist, entrepreneur, publisher, and lecturer. He was lauded as the "greatest humorist the United States has produced,"[2] and William Faulkner called him "the father of American literature".[3] His novels include The Adventures of Tom Sawyer (1876) and its sequel, Adventures of Huckleberry Finn (1884),[4] the latter of which has often been called the "Great American Novel".')
Book.create!(
  title: 'The Adventures of Tom Sawyer',
  authors: [mark_twain],
  groups: [group_novel],
  description: 'The Adventures of Tom Sawyer is an 1876 novel by Mark Twain about a boy growing up along the Mississippi River. It is set in the 1840s in the town of St. Petersburg, which is based on Hannibal, Missouri, where Twain lived as a boy.[2] In the novel, Tom Sawyer has several adventures, often with his friend Huckleberry Finn. Originally a commercial failure, the book ended up being the best selling of any of Twains works during his lifetime.'
)
Book.create!(
  title: 'Adventures of Huckleberry Finn',
  authors: [mark_twain],
  groups: [group_novel],
  description: 'Adventures of Huckleberry Finn or as it is known in more recent editions, The Adventures of Huckleberry Finn, is a novel by American author Mark Twain, which was first published in the United Kingdom in December 1884 and in the United States in February 1885.'
)

ernest_hemingway = Author.create!(name: 'Ernest Hemingway', bio: 'Ernest Miller Hemingway (July 21, 1899 – July 2, 1961) was an American novelist, short-story writer, journalist, and sportsman. His economical and understated style—which he termed the iceberg theory—had a strong influence on 20th-century fiction, while his adventurous lifestyle and his public image brought him admiration from later generations. Hemingway produced most of his work between the mid-1920s and the mid-1950s, and he was awarded the 1954 Nobel Prize in Literature. He published seven novels, six short-story collections, and two nonfiction works. Three of his novels, four short-story collections, and three nonfiction works were published posthumously. Many of his works are considered classics of American literature.')
Book.create!(
  title: 'The Old Man and the Sea',
  authors: [ernest_hemingway],
  groups: [group_novel],
  description: 'The Old Man and the Sea is a novella written by the American author Ernest Hemingway in 1951 in Cayo Blanco (Cuba), and published in 1952.[1] It was the last major work of fiction written by Hemingway that was published during his lifetime. One of his most famous works, it tells the story of Santiago, an aging Cuban fisherman who struggles with a giant marlin far out in the Gulf Stream off the coast of Cuba.[2]'
)
Book.create!(
  title: 'A Farewell to Arms',
  authors: [ernest_hemingway],
  groups: [group_novel, group_lit_real],
  description: 'A Farewell to Arms is a novel by American writer Ernest Hemingway, set during the Italian campaign of World War I. First published in 1929, it is a first-person account of an American, Frederic Henry, serving as a lieutenant ("tenente") in the ambulance corps of the Italian Army. The title is taken from a poem by the 16th-century English dramatist George Peele.'
)
Book.create!(
  title: 'For Whom the Bell Tolls',
  authors: [ernest_hemingway],
  groups: [group_novel, group_lit_real],
  description: 'For Whom the Bell Tolls is a novel by Ernest Hemingway published in 1940. It tells the story of Robert Jordan, a young American volunteer attached to a Republican guerrilla unit during the Spanish Civil War. As a dynamiter, he is assigned to blow up a bridge during an attack on the city of Segovia.'
)