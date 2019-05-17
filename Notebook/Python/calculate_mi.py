from sklearn.metrics import mutual_info_score
import sys
import codecs
from string import punctuation
import jieba.posseg as pseg
import jieba.analyse
import jieba
import collections
from nltk import bigrams
import math
import nltk
nltk.download("punkt")

#a = """When the defendant and his lawyer walked into the court, some of the victim supporters turned their backs on him.  if we have more data then it will be more interesting because we have more chance to repeat bigrams. After some of the victim supporters turned their backs then a subset of the victim supporters turned around and left the court."""


# 预处理中文文本
if sys.getdefaultencoding() != 'utf-8':
    reload(sys)
    sys.setdefaultencoding('utf-8')
# 定义要删除的标点等字符
add_punc = '，。、【 】 “”：；（）《》‘’{}？！⑦()、%^>℃：.”“^-——=&#@￥'
all_punc = punctuation+add_punc

# def cut_words(sentence):
# print sentence
#    return " ".join(jieba.cut(sentence)).encode('utf-8')
# 指定要分词的文本
f = codecs.open('红楼梦-半本.txt', 'r', encoding="utf8")
# 指定分词结果的保存文本
target = codecs.open("处理过的红楼梦-半本.txt", 'w', encoding="utf8")
print('open files')
line_num = 1
line = f.readline()
while line:

    print('---- processing ', line_num, ' article----------------')
    # 第一次分词，用于移除标点等符号
# line=re.sub(r'[A-Za-z0-9]|/d+','',line)   #用于移除英文和数字
    line_seg = " ".join(jieba.cut(line))
    # 移除标点等需要删除的符号
    testline = line_seg.split(' ')
    te2 = []
    for i in testline:
        te2.append(i)
        if i in all_punc:
            te2.remove(i)
    # 返回的te2是个list，转换为string后少了空格，因此需要再次分词
        # 第二次在仅汉字的基础上再次进行分词
    line_seg2 = " ".join(jieba.cut(''.join(te2)))
    target.writelines(line_seg2)
    line_num = line_num + 1
    line = f.readline()
f.close()
target.close()

f = open("处理过的红楼梦-半本.txt")
a = f.read()

a1 = a.split()
a2 = collections.Counter(a1)

a3 = collections.Counter(bigrams(a1))
a4 = sum([a2[x]for x in a2])
a5 = sum([a3[x]for x in a3])
a6 = {x: float(a2[x])/a4 for x in a2}  # word probabilities(w1 and w2)
a7 = {x: float(a3[x])/a5 for x in a3}  # joint probabilites (w1&w2)
u = {}
v = {}
for x in a6:
    k = {x: round(math.log((a7[b]/(a6[x] * a6[y])), 2), 4)
         for b in a7 for y in a6 if x and y in b}
    u[x] = k[x]
    k = {x: round(math.log((a7[b]/(a6[x] * a6[y])), 2), 4)
         for b in a7 for y in a6 if x in b and y in b}
    v[x] = k[x]


def calc_MI(x, y, bins):
    c_xy = np.histogram2d(x, y, bins)[0]
    mi = mutual_info_score(None, None, contingency=c_xy)
    return mi


print(sorted(u.items(), key=lambda item: item[1])i, reverse=True)

# bins = 5
# X = {}
# Y = {}
# MI = {}
# for x in X:
#     for y in Y:
#         MI[(x, y)] = calc_MI(x, y, bins)
