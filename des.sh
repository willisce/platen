#!/usr/bin/env bash

rails d scaffold SiteType
rails d scaffold Site

rails d scaffold SectionView
rails d scaffold SectionType
rails d scaffold Section

rails d scaffold EntryView
rails d scaffold EntryType
rails d scaffold Entry

rails d scaffold FieldType
rails d scaffold DataType

rails d model SectionViewDefinition
rails d model SectionTypeDefinition
rails d model EntryTypeDefinition
