# Generated by Django 4.0.1 on 2022-04-16 20:04

import ckeditor.fields
from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('learning', '0012_course_image'),
    ]

    operations = [
        migrations.AddField(
            model_name='guide',
            name='richContent',
            field=ckeditor.fields.RichTextField(blank=True, null=True),
        ),
    ]