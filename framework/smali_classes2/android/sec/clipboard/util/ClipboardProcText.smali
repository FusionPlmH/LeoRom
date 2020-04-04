.class public Landroid/sec/clipboard/util/ClipboardProcText;
.super Ljava/lang/Object;
.source "ClipboardProcText.java"


# static fields
.field private static final IMG_BEGIN:Ljava/lang/String; = "<img"

.field private static final IMG_SRC:Ljava/lang/String; = "src=\""

.field private static final TAG:Ljava/lang/String; = "ClipboardProcText"

.field private static body_found:Z

.field private static href:Ljava/lang/String;

.field private static in_body:Z

.field private static pre:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/sec/clipboard/util/ClipboardProcText;->body_found:Z

    sput-boolean v0, Landroid/sec/clipboard/util/ClipboardProcText;->in_body:Z

    sput-boolean v0, Landroid/sec/clipboard/util/ClipboardProcText;->pre:Z

    const-string v0, ""

    sput-object v0, Landroid/sec/clipboard/util/ClipboardProcText;->href:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2}, Ljava/io/StringReader;->read()I

    move-result v4

    :goto_0
    const/4 v5, -0x1

    if-eq v4, v5, :cond_15

    const-string v5, ""

    move-object v3, v5

    const/16 v5, 0x3c

    if-ne v4, v5, :cond_0

    invoke-static {v2}, Landroid/sec/clipboard/util/ClipboardProcText;->getTag(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/sec/clipboard/util/ClipboardProcText;->convertTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    goto/16 :goto_b

    :cond_0
    const/16 v5, 0x26

    if-ne v4, v5, :cond_10

    invoke-static {v2}, Landroid/sec/clipboard/util/ClipboardProcText;->getSpecial(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "lt;"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "#60"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_7

    :cond_1
    const-string/jumbo v6, "gt;"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "#62"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_6

    :cond_2
    const-string v6, "amp;"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    const-string v6, "#38"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto/16 :goto_5

    :cond_3
    const-string/jumbo v6, "nbsp;"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, " "

    move-object v3, v6

    goto/16 :goto_8

    :cond_4
    const-string/jumbo v6, "quot;"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "#34"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    const-string v6, "copy;"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "#169"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_3

    :cond_6
    const-string/jumbo v6, "reg;"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "#174"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_2

    :cond_7
    const-string/jumbo v6, "trade;"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "#153"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_1

    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    goto :goto_8

    :cond_9
    :goto_1
    const-string v6, "[Trademark]"

    move-object v3, v6

    goto :goto_8

    :cond_a
    :goto_2
    const-string v6, "[Registered]"

    move-object v3, v6

    goto :goto_8

    :cond_b
    :goto_3
    const-string v6, "[Copyright]"

    move-object v3, v6

    goto :goto_8

    :cond_c
    :goto_4
    const-string v6, "\""

    move-object v3, v6

    goto :goto_8

    :cond_d
    :goto_5
    const-string v6, "&"

    move-object v3, v6

    goto :goto_8

    :cond_e
    :goto_6
    const-string v6, ">"

    move-object v3, v6

    goto :goto_8

    :cond_f
    :goto_7
    const-string v6, "<"

    move-object v3, v6

    :goto_8
    goto :goto_b

    :cond_10
    sget-boolean v5, Landroid/sec/clipboard/util/ClipboardProcText;->pre:Z

    if-nez v5, :cond_13

    int-to-char v5, v4

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_13

    sget-boolean v5, Landroid/sec/clipboard/util/ClipboardProcText;->in_body:Z

    if-eqz v5, :cond_11

    move-object v5, v0

    goto :goto_9

    :cond_11
    move-object v5, v1

    :goto_9
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_12

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_12

    const-string v6, ""

    move-object v3, v6

    goto :goto_a

    :cond_12
    const-string v6, " "

    move-object v3, v6

    :goto_a
    goto :goto_b

    :cond_13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    :goto_b
    sget-boolean v5, Landroid/sec/clipboard/util/ClipboardProcText;->in_body:Z

    if-eqz v5, :cond_14

    move-object v5, v0

    goto :goto_c

    :cond_14
    move-object v5, v1

    :goto_c
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/io/StringReader;->read()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v6

    goto/16 :goto_0

    :cond_15
    nop

    sget-boolean v3, Landroid/sec/clipboard/util/ClipboardProcText;->body_found:Z

    if-eqz v3, :cond_16

    move-object v3, v0

    goto :goto_d

    :cond_16
    move-object v3, v1

    :goto_d
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v3

    invoke-virtual {v2}, Ljava/io/StringReader;->close()V

    throw v3
.end method

.method private static convertTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    const-string v1, "body"

    invoke-static {p0, v1}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    sput-boolean v2, Landroid/sec/clipboard/util/ClipboardProcText;->in_body:Z

    sput-boolean v2, Landroid/sec/clipboard/util/ClipboardProcText;->body_found:Z

    goto/16 :goto_3

    :cond_0
    const-string v1, "/body"

    invoke-static {p0, v1}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    sput-boolean v3, Landroid/sec/clipboard/util/ClipboardProcText;->in_body:Z

    const-string v0, ""

    goto/16 :goto_3

    :cond_1
    const-string v1, "center"

    invoke-static {p0, v1}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, ""

    goto/16 :goto_3

    :cond_2
    const-string v1, "/center"

    invoke-static {p0, v1}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, ""

    goto/16 :goto_3

    :cond_3
    const-string/jumbo v1, "pre"

    invoke-static {p0, v1}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, ""

    sput-boolean v2, Landroid/sec/clipboard/util/ClipboardProcText;->pre:Z

    goto/16 :goto_3

    :cond_4
    const-string v1, "/pre"

    invoke-static {p0, v1}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, ""

    sput-boolean v3, Landroid/sec/clipboard/util/ClipboardProcText;->pre:Z

    goto/16 :goto_3

    :cond_5
    const-string/jumbo v1, "p"

    invoke-static {p0, v1}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "\n"

    goto/16 :goto_3

    :cond_6
    const-string v1, "br"

    invoke-static {p0, v1}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "\n"

    goto/16 :goto_3

    :cond_7
    const-string/jumbo v1, "h1"

    invoke-static {p0, v1}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string/jumbo v1, "h2"

    invoke-static {p0, v1}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string/jumbo v1, "h3"

    invoke-static {p0, v1}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string/jumbo v1, "h4"

    invoke-static {p0, v1}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string/jumbo v1, "h5"

    invoke-static {p0, v1}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string/jumbo v1, "h6"

    invoke-static {p0, v1}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string/jumbo v1, "h7"

    invoke-static {p0, v1}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto/16 :goto_2

    :cond_8
    const-string v1, "/h1"

    invoke-static {p0, v1}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "/h2"

    invoke-static {p0, v1}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "/h3"

    invoke-static {p0, v1}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "/h4"

    invoke-static {p0, v1}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "/h5"

    invoke-static {p0, v1}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "/h6"

    invoke-static {p0, v1}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "/h7"

    invoke-static {p0, v1}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto/16 :goto_1

    :cond_9
    const-string v1, "/dl"

    invoke-static {p0, v1}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v0, ""

    goto/16 :goto_3

    :cond_a
    const-string v1, "dd"

    invoke-static {p0, v1}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v0, ""

    goto/16 :goto_3

    :cond_b
    const-string v1, "dt"

    invoke-static {p0, v1}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v0, "      "

    goto/16 :goto_3

    :cond_c
    const-string/jumbo v1, "li"

    invoke-static {p0, v1}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v0, "\n   "

    goto/16 :goto_3

    :cond_d
    const-string v1, "/ul"

    invoke-static {p0, v1}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v0, ""

    goto/16 :goto_3

    :cond_e
    const-string v1, "/ol"

    invoke-static {p0, v1}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v0, ""

    goto/16 :goto_3

    :cond_f
    const-string/jumbo v1, "hr"

    invoke-static {p0, v1}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v0, "_________________________________________"

    goto/16 :goto_3

    :cond_10
    const-string/jumbo v1, "table"

    invoke-static {p0, v1}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v0, ""

    goto/16 :goto_3

    :cond_11
    const-string v1, "/table"

    invoke-static {p0, v1}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v0, ""

    goto/16 :goto_3

    :cond_12
    const-string v1, "form"

    invoke-static {p0, v1}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v0, ""

    goto/16 :goto_3

    :cond_13
    const-string v1, "/form"

    invoke-static {p0, v1}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v0, ""

    goto/16 :goto_3

    :cond_14
    const-string v1, "b"

    invoke-static {p0, v1}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v0, ""

    goto/16 :goto_3

    :cond_15
    const-string v1, "/b"

    invoke-static {p0, v1}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v0, ""

    goto/16 :goto_3

    :cond_16
    const-string/jumbo v1, "i"

    invoke-static {p0, v1}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v0, ""

    goto/16 :goto_3

    :cond_17
    const-string v1, "/i"

    invoke-static {p0, v1}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v0, ""

    goto :goto_3

    :cond_18
    const-string/jumbo v1, "img"

    invoke-static {p0, v1}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1a

    const-string v1, "alt=\""

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_19

    add-int/lit8 v1, v1, 0x5

    const-string v2, "\""

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_19
    goto :goto_3

    :cond_1a
    const-string v1, "a"

    invoke-static {p0, v1}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string/jumbo v1, "href=\""

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1b

    add-int/lit8 v1, v1, 0x6

    const-string v2, "\""

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/sec/clipboard/util/ClipboardProcText;->href:Ljava/lang/String;

    goto :goto_0

    :cond_1b
    const-string v2, ""

    sput-object v2, Landroid/sec/clipboard/util/ClipboardProcText;->href:Ljava/lang/String;

    :goto_0
    goto :goto_3

    :cond_1c
    const-string v1, "/a"

    invoke-static {p0, v1}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    sget-object v1, Landroid/sec/clipboard/util/ClipboardProcText;->href:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_20

    const-string v0, "\n"

    goto :goto_3

    :cond_1d
    const-string v1, "/tr"

    invoke-static {p0, v1}, Landroid/sec/clipboard/util/ClipboardProcText;->isTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    const-string v0, "\n"

    goto :goto_3

    :cond_1e
    :goto_1
    const-string v0, ""

    goto :goto_3

    :cond_1f
    :goto_2
    const-string v0, ""

    :cond_20
    :goto_3
    return-object v0
.end method

.method public static getImgFileNameFromHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    move-object v0, p0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "<img"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    :goto_0
    if-le v3, v5, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "src=\""

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_2

    const-string/jumbo v6, "src=\""

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, "\""

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    goto :goto_1

    :cond_0
    const-string v6, "<img"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    :cond_1
    const-string v5, "<iframe"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_2

    const-string v5, "ClipboardProcText"

    const-string v6, "This is using a iframe tag."

    invoke-static {v5, v6}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-object v2
.end method

.method private static getSpecial(Ljava/io/Reader;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/Reader;->mark(I)V

    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v2

    :goto_0
    int-to-char v3, v2

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_0

    int-to-char v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v1}, Ljava/io/Reader;->mark(I)V

    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v2

    goto :goto_0

    :cond_0
    const/16 v1, 0x3b

    if-ne v2, v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/io/Reader;->reset()V

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getTag(Ljava/io/Reader;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x1

    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    if-lez v1, :cond_3

    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto :goto_2

    :cond_0
    int-to-char v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-ne v3, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/16 v4, 0x3e

    if-ne v3, v4, :cond_2

    add-int/lit8 v1, v1, -0x1

    :cond_2
    :goto_1
    goto :goto_0

    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static isTag(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method
