# rom django.db import models
# 
# 
# lass Question(models.Model):
#    question_text = models.CharField(max_length=200)
#    pub_date = models.DateTimeField('date published')
#    slug = models.CharField(max_length=10, unique=True,
#                            default="question")
# 
#    def __str__(self):
#        return self.question_text
# 
# 
# lass Choice(models.Model):
#    question = models.ForeignKey(Question, on_delete=models.CASCADE)
#    choice_text = models.CharField(max_length=200)
#    votes = models.IntegerField(default=0)
#    test = models.CharField(max_length=200, default='test')
# 
#    def __str__(self):
#        return self.choice_text
# 