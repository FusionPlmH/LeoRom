.class Landroid/media/TtmlParser;
.super Ljava/lang/Object;
.source "TtmlRenderer.java"


# static fields
.field private static final DEFAULT_FRAMERATE:I = 0x1e

.field private static final DEFAULT_SUBFRAMERATE:I = 0x1

.field private static final DEFAULT_TICKRATE:I = 0x1

.field static final TAG:Ljava/lang/String; = "TtmlParser"


# instance fields
.field private mCurrentRunId:J

.field private final mListener:Landroid/media/TtmlNodeListener;

.field private mParser:Lorg/xmlpull/v1/XmlPullParser;

.field private mRegionSet:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/media/TtmlRegionTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/media/TtmlNodeListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/media/TtmlParser;->mRegionSet:Ljava/util/LinkedList;

    iput-object p1, p0, Landroid/media/TtmlParser;->mListener:Landroid/media/TtmlNodeListener;

    return-void
.end method

.method private extractAttribute(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/StringBuilder;)V
    .locals 1

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private isEndOfDoc()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isSupportedTag(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "tt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "head"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "body"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "div"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "p"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "span"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "br"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private loadParser(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    iput-object v1, p0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    return-void
.end method

.method private parseNode(Landroid/media/TtmlNode;)Landroid/media/TtmlNode;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    iget-object v1, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v13

    const/4 v1, 0x2

    if-eq v13, v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const-wide/16 v1, 0x0

    const-wide v3, 0x7fffffffffffffffL

    const-wide/16 v5, 0x0

    iget-object v7, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "p"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_6

    const/4 v7, 0x0

    :goto_0
    iget-object v10, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v10

    if-ge v7, v10, :cond_6

    cmp-long v10, v1, v8

    const/4 v11, 0x1

    if-eqz v10, :cond_2

    cmp-long v10, v3, v8

    if-nez v10, :cond_1

    cmp-long v10, v5, v8

    if-eqz v10, :cond_2

    :cond_1
    if-le v7, v11, :cond_2

    goto :goto_2

    :cond_2
    iget-object v10, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v10

    iget-object v14, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "^.*:"

    const-string v8, ""

    invoke-virtual {v10, v15, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "begin"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/16 v10, 0x1e

    if-eqz v9, :cond_3

    invoke-static {v14, v10, v11, v11}, Landroid/media/TtmlUtils;->parseTimeExpression(Ljava/lang/String;III)J

    move-result-wide v1

    goto :goto_1

    :cond_3
    const-string v9, "end"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {v14, v10, v11, v11}, Landroid/media/TtmlUtils;->parseTimeExpression(Ljava/lang/String;III)J

    move-result-wide v3

    goto :goto_1

    :cond_4
    const-string v9, "dur"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v14, v10, v11, v11}, Landroid/media/TtmlUtils;->parseTimeExpression(Ljava/lang/String;III)J

    move-result-wide v5

    :cond_5
    :goto_1
    add-int/lit8 v7, v7, 0x1

    const-wide/16 v8, 0x0

    goto :goto_0

    :cond_6
    :goto_2
    move-wide v14, v5

    const-wide v5, 0x7fffffffffffffffL

    if-eqz v12, :cond_7

    iget-wide v7, v12, Landroid/media/TtmlNode;->mStartTimeMs:J

    add-long/2addr v1, v7

    cmp-long v7, v3, v5

    if-eqz v7, :cond_7

    iget-wide v7, v12, Landroid/media/TtmlNode;->mStartTimeMs:J

    add-long/2addr v3, v7

    :cond_7
    move-wide/from16 v18, v1

    const-wide/16 v1, 0x0

    cmp-long v1, v14, v1

    if-lez v1, :cond_9

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    const-string v1, "TtmlParser"

    const-string v2, "\'dur\' and \'end\' attributes are defined at the same time.\'end\' value is ignored."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    add-long v3, v18, v14

    :cond_9
    if-eqz v12, :cond_a

    cmp-long v1, v3, v5

    if-nez v1, :cond_a

    iget-wide v1, v12, Landroid/media/TtmlNode;->mEndTimeMs:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_a

    iget-wide v1, v12, Landroid/media/TtmlNode;->mEndTimeMs:J

    cmp-long v1, v3, v1

    if-lez v1, :cond_a

    iget-wide v1, v12, Landroid/media/TtmlNode;->mEndTimeMs:J

    move-wide/from16 v16, v1

    goto :goto_3

    :cond_a
    move-wide/from16 v16, v3

    :goto_3
    new-instance v20, Landroid/media/TtmlNode;

    iget-object v1, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-wide v10, v0, Landroid/media/TtmlParser;->mCurrentRunId:J

    move-object/from16 v1, v20

    move-wide/from16 v5, v18

    move-wide/from16 v7, v16

    move-object v9, v12

    invoke-direct/range {v1 .. v11}, Landroid/media/TtmlNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/media/TtmlNode;J)V

    return-object v1
.end method

.method private parseTtml()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    invoke-direct/range {p0 .. p0}, Landroid/media/TtmlParser;->isEndOfDoc()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/TtmlNode;

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eqz v3, :cond_7

    if-ne v4, v7, :cond_2

    iget-object v6, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/media/TtmlParser;->isSupportedTag(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "TtmlParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported tag "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is ignored."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_0
    invoke-direct {v0, v5}, Landroid/media/TtmlParser;->parseNode(Landroid/media/TtmlNode;)Landroid/media/TtmlNode;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    if-eqz v5, :cond_1

    iget-object v7, v5, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    goto/16 :goto_2

    :cond_2
    const/4 v7, 0x4

    if-ne v4, v7, :cond_4

    iget-object v6, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz v5, :cond_3

    iget-object v14, v5, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    new-instance v12, Landroid/media/TtmlNode;

    const-string v7, "#pcdata"

    const-string v8, ""

    const-wide/16 v10, 0x0

    const-wide v16, 0x7fffffffffffffffL

    move-object/from16 v18, v14

    iget-wide v13, v0, Landroid/media/TtmlParser;->mCurrentRunId:J

    move-object v6, v12

    move-object v9, v15

    move-wide/from16 v19, v13

    move-object v14, v12

    move-wide/from16 v12, v16

    move-object/from16 v22, v14

    move-object/from16 v21, v18

    move-object v14, v5

    move-object/from16 v17, v15

    move-wide/from16 v15, v19

    invoke-direct/range {v6 .. v16}, Landroid/media/TtmlNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/media/TtmlNode;J)V

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    goto :goto_2

    :cond_4
    if-ne v4, v6, :cond_9

    iget-object v6, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "p"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v0, Landroid/media/TtmlParser;->mListener:Landroid/media/TtmlNodeListener;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/TtmlNode;

    invoke-interface {v6, v7}, Landroid/media/TtmlNodeListener;->onTtmlNodeParsed(Landroid/media/TtmlNode;)V

    goto :goto_1

    :cond_5
    iget-object v6, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "tt"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, v0, Landroid/media/TtmlParser;->mListener:Landroid/media/TtmlNodeListener;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/TtmlNode;

    invoke-interface {v6, v7}, Landroid/media/TtmlNodeListener;->onRootNodeParsed(Landroid/media/TtmlNode;)V

    :cond_6
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    goto :goto_2

    :cond_7
    if-ne v4, v7, :cond_8

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    if-ne v4, v6, :cond_9

    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_9

    const/4 v3, 0x1

    :cond_9
    :goto_2
    iget-object v6, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto/16 :goto_0

    :cond_a
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    iput-wide p2, p0, Landroid/media/TtmlParser;->mCurrentRunId:J

    invoke-direct {p0, p1}, Landroid/media/TtmlParser;->loadParser(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/media/TtmlParser;->parseTtml()V

    return-void
.end method
