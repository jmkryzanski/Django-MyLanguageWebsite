# Generated by Django 4.0.1 on 2022-01-19 00:59

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('learning', '0009_post_post_date'),
    ]

    operations = [
        migrations.AddField(
            model_name='lesson',
            name='orderingID',
            field=models.IntegerField(default=1, max_length=10),
            preserve_default=False,
        ),
    ]
