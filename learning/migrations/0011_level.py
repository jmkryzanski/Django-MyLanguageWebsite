# Generated by Django 4.0.1 on 2022-03-24 20:08

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('learning', '0010_lesson_numlevels'),
    ]

    operations = [
        migrations.CreateModel(
            name='Level',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('levelNumber', models.IntegerField()),
                ('lesson', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='learning.lesson')),
            ],
        ),
    ]
