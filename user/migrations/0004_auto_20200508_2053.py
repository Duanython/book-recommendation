# Generated by Django 2.1 on 2020-05-08 12:53

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('user', '0003_auto_20200507_1149'),
    ]

    operations = [
        migrations.AlterField(
            model_name='comment',
            name='create_time',
            field=models.DateTimeField(auto_now_add=True, verbose_name='评价时间'),
        ),
    ]
