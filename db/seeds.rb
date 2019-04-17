Library.destroy_all
User.destroy_all
BookTitle.destroy_all
LibraryTitle.destroy_all
BookReview.destroy_all

# Library

bronx_library = Library.create(location: "Bronx")
brooklyn_library = Library.create(location: "Brooklyn")
manhattan_library = Library.create(location: "Manhattan")
queens_library = Library.create(location: "queens")
si_library = Library.create(location: "Staten Island")

# User

jamil = User.create(name: "Jamil", borough: "Queens")
tim = User.create(name: "Tim", borough: "Brooklyn")
george = User.create(name: "George", borough: "Manhattan")
mary = User.create(name: "Mary", borough: "Staten Island")
arthur = User.create(name: "Arthur", borough: "Bronx")


# Book Title
alchemist = BookTitle.create(library_id: bronx_library.id , name: "Alchemist")
cinder = BookTitle.create(library_id: brooklyn_library.id, name: "Cinder")
caraval = BookTitle.create(library_id: manhattan_library.id, name: "Caraval")
speak = BookTitle.create(library_id: queens_library.id, name: "Speak")
stormbringer = BookTitle.create(library_id: si_library.id, name: "Stormbringer")
island = BookTitle.create(library_id: bronx_library.id, name: "Island")
kindred = BookTitle.create(library_id: si_library.id, name: "Kindred")
uprooted = BookTitle.create(library_id: brooklyn_library.id, name: "Uprooted")
dracula = BookTitle.create(library_id: manhattan_library.id, name: "Dracula")
odyssey = BookTitle.create(library_id: queens_library.id, name: "Odyssey")


# Library Title

LibraryTitle.create(user_id: jamil.id, book_title_id: alchemist.id, library_id: bronx_library.id)
LibraryTitle.create(user_id: tim.id, book_title_id: odyssey.id, library_id: queens_library.id)
LibraryTitle.create(user_id: george.id, book_title_id: dracula.id, library_id: manhattan_library.id )
LibraryTitle.create(user_id: mary.id, book_title_id: uprooted.id, library_id: brooklyn_library.id )
LibraryTitle.create(user_id: arthur.id, book_title_id: kindred.id, library_id: si_library.id )
LibraryTitle.create(user_id: arthur.id, book_title_id: island.id, library_id: bronx_library.id )
LibraryTitle.create(user_id: mary.id, book_title_id: stormbringer.id, library_id: si_library.id)
LibraryTitle.create(user_id: george.id, book_title_id: speak.id, library_id: queens_library.id)
LibraryTitle.create(user_id: tim.id, book_title_id: caraval.id, library_id: manhattan_library.id )
LibraryTitle.create(user_id: jamil.id, book_title_id: cinder.id, library_id: brooklyn_library.id)


# Book Review

BookReview.create(user_id: jamil.id, book_title_id: alchemist.id, library_id: bronx_library.id, review: "great")
BookReview.create(user_id: tim.id, book_title_id: odyssey.id, library_id: queens_library.id, review: "Ok")
BookReview.create(user_id: george.id, book_title_id: dracula.id, library_id: manhattan_library.id, review: "riveting!")
BookReview.create(user_id: mary.id, book_title_id: uprooted.id, library_id: brooklyn_library.id, review: "must read")
BookReview.create(user_id: arthur.id, book_title_id: kindred.id, library_id: si_library.id, review: "classic")
BookReview.create(user_id: arthur.id, book_title_id: island.id, library_id: bronx_library.id, review: "action packed")
BookReview.create(user_id: mary.id, book_title_id: stormbringer.id, library_id: si_library.id, review: "spine-tingling")
BookReview.create(user_id: george.id, book_title_id: speak.id, library_id: queens_library.id, review: "enchanting")
BookReview.create(user_id: tim.id, book_title_id: caraval.id, library_id: manhattan_library.id, review: "invigorating")
BookReview.create(user_id: jamil.id, book_title_id: cinder.id, library_id: brooklyn_library.id, review: "witty")
