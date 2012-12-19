#!/usr/bin/env bash

rails g scaffold SiteType name:string user:references
rails g scaffold Site title:string site_type:references user:references

rails g scaffold SectionView name:string view_code:text section_type:references user:references
rails g scaffold SectionType name:string site_type:references user:references
rails g scaffold Section title:string site:references section_type:references parent_section:references user:references

rails g scaffold EntryView name:string view_code:text entry_type:references user:references
rails g scaffold EntryType name:string model:text form_code:text user:references
rails g scaffold Entry data:text entry_type:references section:references user:references

rails g scaffold FieldType name:string label:string data_type:references user:references
rails g scaffold DataType name:string control_code:text user:references

rails g model SectionViewDefinition section_view:references entry_view:references user:references
rails g model SectionTypeDefinition section_type:references entry_type:references user:references
rails g model EntryTypeDefinition entry_type:references field_type:references user:references