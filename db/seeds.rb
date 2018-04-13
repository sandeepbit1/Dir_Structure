# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
DirStr.create(name: 'Dir1', parent_dir: 'self', owner: 'abc')
DirStr.create(name: 'Dir2', parent_dir: 'Dir1', owner: 'abc2')
DirStr.create(name: 'Dir3', parent_dir: 'Dir1', owner: 'abc3')
DirStr.create(name: 'Dir2.1', parent_dir: 'Dir2', owner: 'abc2.1')
DirStr.create(name: 'Dir2.2', parent_dir: 'Dir2', owner: 'abc2.2')
DirStr.create(name: 'Dir3.1', parent_dir: 'Dir3', owner: 'abc3.1')
DirStr.create(name: 'Dir3.2', parent_dir: 'Dir3', owner: 'abc3.2')

FileStr.create(name: 'File1', parent_dir: 'Dir1', owner: 'xyz1')
FileStr.create(name: 'File2', parent_dir: 'Dir1', owner: 'xyz2')
FileStr.create(name: 'File3', parent_dir: 'Dir1', owner: 'xyz3')
FileStr.create(name: 'File2.1', parent_dir: 'Dir2', owner: 'xyz2.1')
FileStr.create(name: 'File2.2', parent_dir: 'Dir2', owner: 'xyz2.2')
FileStr.create(name: 'File3.1', parent_dir: 'Dir3', owner: 'xyz3.1')
FileStr.create(name: 'File3.2', parent_dir: 'Dir3', owner: 'xyz3.2')
