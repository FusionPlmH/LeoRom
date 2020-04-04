.class public Landroid/text/util/Linkify;
.super Ljava/lang/Object;
.source "Linkify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/util/Linkify$TransformFilter;,
        Landroid/text/util/Linkify$MatchFilter;,
        Landroid/text/util/Linkify$LinkifyMask;
    }
.end annotation


# static fields
.field public static final ALL:I = 0xf

.field public static final EMAIL_ADDRESSES:I = 0x2

.field private static final KOR_CURRENCY_SYMBOL:C = '\u20a9'

.field private static final KOR_CURRENCY_WON:C = '\uc6d0'

.field private static final LOG_TAG:Ljava/lang/String; = "Linkify"

.field public static final MAP_ADDRESSES:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PHONE_NUMBERS:I = 0x4

.field private static final PHONE_NUMBER_MINIMUM_DIGITS:I = 0x5

.field public static final SEM_ALL_MIXED_CJK:I = 0x500a

.field public static final SEM_ALL_MIXED_KOR:I = 0x600a

.field public static final SEM_PHONE_NUMBERS_CJK:I = 0x8000

.field public static final SEM_PHONE_NUMBERS_KOR:I = 0x4000

.field public static final SEM_WEB_URLS_CJK:I = 0x1000

.field public static final SEM_WEB_URLS_KOR:I = 0x2000

.field public static final WEB_URLS:I = 0x1

.field public static final sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

.field public static final sPhoneNumberMatchFilterEX:Landroid/text/util/Linkify$MatchFilter;

.field public static final sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

.field public static final sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/text/util/Linkify$1;

    invoke-direct {v0}, Landroid/text/util/Linkify$1;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    new-instance v0, Landroid/text/util/Linkify$2;

    invoke-direct {v0}, Landroid/text/util/Linkify$2;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    new-instance v0, Landroid/text/util/Linkify$3;

    invoke-direct {v0}, Landroid/text/util/Linkify$3;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    new-instance v0, Landroid/text/util/Linkify$5;

    invoke-direct {v0}, Landroid/text/util/Linkify$5;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sPhoneNumberMatchFilterEX:Landroid/text/util/Linkify$MatchFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final addLinkMovementMethod(Landroid/widget/TextView;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_1
    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method

.method public static final addLinks(Landroid/text/Spannable;I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;ILandroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static addLinks(Landroid/text/Spannable;ILandroid/content/Context;)Z
    .locals 17

    move-object/from16 v6, p0

    move/from16 v7, p1

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v6, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/util/Linkify;->containsUnsupportedCharacters(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x534e4554

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "116321860"

    aput-object v2, v1, v10

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v11

    const-string v2, ""

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return v10

    :cond_0
    if-nez v7, :cond_1

    return v10

    :cond_1
    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/style/URLSpan;

    invoke-interface {v6, v10, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, [Landroid/text/style/URLSpan;

    array-length v0, v12

    sub-int/2addr v0, v11

    :goto_0
    if-ltz v0, :cond_2

    aget-object v1, v12, v0

    invoke-interface {v6, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_3

    sget-object v2, Landroid/util/Patterns;->AUTOLINK_WEB_URL:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "http://"

    const-string/jumbo v1, "https://"

    const-string/jumbo v3, "rtsp://"

    filled-new-array {v0, v1, v3}, [Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v5, 0x0

    move-object v0, v13

    move-object v1, v6

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/util/LinkSpec;

    invoke-static {v1}, Landroid/text/util/Linkify;->checkBracketsPairs(Landroid/text/util/LinkSpec;)V

    goto :goto_1

    :cond_3
    and-int/lit16 v0, v7, 0x1000

    const/16 v14, 0x80

    if-eqz v0, :cond_9

    sget-object v2, Landroid/util/Patterns;->WEB_URL_EX:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "http://"

    const-string/jumbo v1, "https://"

    const-string/jumbo v3, "rtsp://"

    const-string v4, "ftp://"

    filled-new-array {v0, v1, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v5, 0x0

    move-object v0, v13

    move-object v1, v6

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/util/LinkSpec;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v1, Landroid/text/util/LinkSpec;->start:I

    iget v4, v1, Landroid/text/util/LinkSpec;->end:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "www."

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "www."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "rtsp://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "ftp://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    iget v3, v1, Landroid/text/util/LinkSpec;->start:I

    const-string/jumbo v4, "www."

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v1, Landroid/text/util/LinkSpec;->start:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    iget-object v5, v1, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    const-string v15, "://"

    invoke-virtual {v5, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v8

    invoke-virtual {v4, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v1, Landroid/text/util/LinkSpec;->start:I

    iget v15, v1, Landroid/text/util/LinkSpec;->end:I

    invoke-virtual {v4, v5, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    goto :goto_3

    :cond_4
    const-string/jumbo v3, "wap."

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "wap."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "rtsp://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "ftp://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    iget v3, v1, Landroid/text/util/LinkSpec;->start:I

    const-string/jumbo v4, "wap."

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v1, Landroid/text/util/LinkSpec;->start:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    iget-object v5, v1, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    const-string v15, "://"

    invoke-virtual {v5, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v8

    invoke-virtual {v4, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v1, Landroid/text/util/LinkSpec;->start:I

    iget v15, v1, Landroid/text/util/LinkSpec;->end:I

    invoke-virtual {v4, v5, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    :cond_5
    :goto_3
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v11

    if-ge v3, v4, :cond_8

    const-string/jumbo v4, "http://api.map.baidu.com/marker?location="

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    move v5, v10

    :goto_4
    array-length v15, v4

    if-ge v5, v15, :cond_7

    aget-char v15, v4, v5

    if-lt v15, v14, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    array-length v15, v4

    if-ge v5, v15, :cond_8

    iget v15, v1, Landroid/text/util/LinkSpec;->end:I

    array-length v14, v4

    sub-int/2addr v14, v5

    sub-int/2addr v15, v14

    iput v15, v1, Landroid/text/util/LinkSpec;->end:I

    iget-object v14, v1, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    iget-object v15, v1, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    array-length v11, v4

    sub-int/2addr v11, v5

    sub-int/2addr v15, v11

    invoke-virtual {v14, v10, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    :cond_8
    invoke-static {v1}, Landroid/text/util/Linkify;->checkBracketsPairs(Landroid/text/util/LinkSpec;)V

    nop

    const/4 v11, 0x1

    const/16 v14, 0x80

    goto/16 :goto_2

    :cond_9
    and-int/lit16 v0, v7, 0x2000

    if-eqz v0, :cond_14

    sget-object v2, Landroid/util/Patterns;->AUTOLINK_WEB_URL_KR:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "http://"

    const-string/jumbo v1, "https://"

    const-string/jumbo v3, "rtsp://"

    const-string v4, "ftp://"

    filled-new-array {v0, v1, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v5, 0x0

    move-object v0, v13

    move-object v1, v6

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    move v0, v10

    :cond_a
    :goto_6
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/util/LinkSpec;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v1, Landroid/text/util/LinkSpec;->start:I

    iget v4, v1, Landroid/text/util/LinkSpec;->end:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".ht"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v3

    iget v4, v1, Landroid/text/util/LinkSpec;->end:I

    add-int/2addr v4, v9

    if-lt v3, v4, :cond_e

    const-string/jumbo v3, "tp"

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v1, Landroid/text/util/LinkSpec;->end:I

    iget v11, v1, Landroid/text/util/LinkSpec;->end:I

    add-int/2addr v11, v9

    invoke-virtual {v4, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    if-le v3, v4, :cond_d

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/util/LinkSpec;

    iget v4, v3, Landroid/text/util/LinkSpec;->start:I

    iget v5, v1, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v5, v5, 0x6

    if-ne v4, v5, :cond_b

    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v4

    iget v5, v1, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v5, v5, 0x5

    if-le v4, v5, :cond_b

    const-string/jumbo v4, "tp://"

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget v11, v1, Landroid/text/util/LinkSpec;->end:I

    iget v14, v1, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v14, v14, 0x5

    invoke-virtual {v5, v11, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    :cond_b
    iget v4, v3, Landroid/text/util/LinkSpec;->start:I

    iget v5, v1, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v5, v5, 0x7

    if-ne v4, v5, :cond_d

    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v4

    iget v5, v1, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v5, v5, 0x6

    if-le v4, v5, :cond_d

    const-string/jumbo v4, "tps://"

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget v11, v1, Landroid/text/util/LinkSpec;->end:I

    iget v14, v1, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v14, v14, 0x6

    invoke-virtual {v5, v11, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_c
    iget v4, v1, Landroid/text/util/LinkSpec;->end:I

    sub-int/2addr v4, v9

    iput v4, v3, Landroid/text/util/LinkSpec;->start:I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v3, Landroid/text/util/LinkSpec;->start:I

    iget v11, v3, Landroid/text/util/LinkSpec;->end:I

    invoke-virtual {v4, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v13, v4, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_d
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-lez v0, :cond_a

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_6

    :cond_e
    const-string/jumbo v3, "www."

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string/jumbo v3, "www."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string/jumbo v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string/jumbo v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string/jumbo v3, "rtsp://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "ftp://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    iget v3, v1, Landroid/text/util/LinkSpec;->start:I

    const-string/jumbo v4, "www."

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v1, Landroid/text/util/LinkSpec;->start:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    iget-object v5, v1, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    const-string v11, "://"

    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v8

    invoke-virtual {v4, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v1, Landroid/text/util/LinkSpec;->start:I

    iget v11, v1, Landroid/text/util/LinkSpec;->end:I

    invoke-virtual {v4, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    :cond_f
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_12

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_12

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    move v5, v10

    :goto_7
    array-length v11, v4

    if-ge v5, v11, :cond_11

    aget-char v11, v4, v5

    const/16 v14, 0x80

    if-lt v11, v14, :cond_10

    goto :goto_8

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_11
    const/16 v14, 0x80

    :goto_8
    array-length v11, v4

    if-ge v5, v11, :cond_13

    if-lez v5, :cond_13

    add-int/lit8 v11, v5, -0x1

    aget-char v11, v4, v11

    const/16 v15, 0x2f

    if-eq v11, v15, :cond_13

    iget v11, v1, Landroid/text/util/LinkSpec;->end:I

    array-length v15, v4

    sub-int/2addr v15, v5

    sub-int/2addr v11, v15

    iput v11, v1, Landroid/text/util/LinkSpec;->end:I

    iget-object v11, v1, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    iget-object v15, v1, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    array-length v8, v4

    sub-int/2addr v8, v5

    sub-int/2addr v15, v8

    invoke-virtual {v11, v10, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    goto :goto_9

    :cond_12
    const/16 v14, 0x80

    :cond_13
    :goto_9
    invoke-static {v1}, Landroid/text/util/Linkify;->checkBracketsPairs(Landroid/text/util/LinkSpec;)V

    add-int/lit8 v0, v0, 0x1

    nop

    const/4 v8, 0x3

    goto/16 :goto_6

    :cond_14
    and-int/lit8 v0, v7, 0x2

    if-eqz v0, :cond_15

    sget-object v2, Landroid/util/Patterns;->AUTOLINK_EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "mailto:"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v13

    move-object v1, v6

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    :cond_15
    const v0, 0xc004

    and-int/2addr v0, v7

    if-eqz v0, :cond_16

    move-object/from16 v0, p2

    invoke-static {v13, v6, v0}, Landroid/text/util/Linkify;->gatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Landroid/content/Context;)V

    goto :goto_a

    :cond_16
    move-object/from16 v0, p2

    :goto_a
    and-int/lit8 v1, v7, 0x8

    if-eqz v1, :cond_17

    invoke-static {v13, v6}, Landroid/text/util/Linkify;->gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    :cond_17
    invoke-static {v13}, Landroid/text/util/Linkify;->pruneOverlaps(Ljava/util/ArrayList;)V

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_18

    return v10

    :cond_18
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/util/LinkSpec;

    iget-object v3, v2, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    iget v4, v2, Landroid/text/util/LinkSpec;->start:I

    iget v5, v2, Landroid/text/util/LinkSpec;->end:I

    invoke-static {v3, v4, v5, v6}, Landroid/text/util/Linkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    goto :goto_b

    :cond_19
    const/4 v1, 0x1

    return v1
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v0

    return v0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v0

    return v0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/util/Linkify;->containsUnsupportedCharacters(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x534e4554

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "116321860"

    aput-object v4, v3, v1

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    const-string v4, ""

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return v1

    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    if-eqz p3, :cond_2

    array-length v2, p3

    if-ge v2, v0, :cond_3

    :cond_2
    sget-object p3, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :cond_3
    array-length v2, p3

    add-int/2addr v2, v0

    new-array v0, v2, [Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    move v2, v1

    :goto_0
    array-length v3, p3

    if-ge v2, v3, :cond_5

    aget-object v3, p3, v2

    add-int/lit8 v4, v2, 0x1

    if-nez v3, :cond_4

    const-string v5, ""

    goto :goto_1

    :cond_4
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    aput-object v5, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    :goto_2
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    const/4 v6, 0x1

    if-eqz p4, :cond_6

    invoke-interface {p4, p0, v4, v5}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v6

    :cond_6
    if-eqz v6, :cond_7

    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0, v3, p5}, Landroid/text/util/Linkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4, v5, p0}, Landroid/text/util/Linkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    const/4 v2, 0x1

    :cond_7
    goto :goto_2

    :cond_8
    return v2
.end method

.method public static final addLinks(Landroid/widget/TextView;I)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    instance-of v3, v2, Landroid/text/Spannable;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v3, p1, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;ILandroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    return v4

    :cond_1
    return v0

    :cond_2
    invoke-static {v2}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v3

    invoke-static {v3, p1, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;ILandroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v4

    :cond_3
    return v0
.end method

.method public static addLinksAsync(Landroid/text/Spannable;Landroid/view/textclassifier/TextClassifier;I)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Landroid/view/textclassifier/TextClassifier;",
            "I)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Landroid/view/textclassifier/TextLinksParams;->fromLinkMask(I)Landroid/view/textclassifier/TextLinksParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Landroid/text/util/Linkify;->addLinksAsync(Landroid/text/Spannable;Landroid/view/textclassifier/TextClassifier;Landroid/view/textclassifier/TextLinksParams;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static addLinksAsync(Landroid/text/Spannable;Landroid/view/textclassifier/TextClassifier;Landroid/view/textclassifier/TextLinksParams;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Landroid/view/textclassifier/TextClassifier;",
            "Landroid/view/textclassifier/TextLinksParams;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Landroid/text/util/Linkify;->addLinksAsync(Landroid/text/Spannable;Landroid/view/textclassifier/TextClassifier;Landroid/view/textclassifier/TextLinksParams;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static addLinksAsync(Landroid/text/Spannable;Landroid/view/textclassifier/TextClassifier;Landroid/view/textclassifier/TextLinksParams;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/concurrent/Future;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Landroid/view/textclassifier/TextClassifier;",
            "Landroid/view/textclassifier/TextLinksParams;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->addLinksAsync(Landroid/text/Spannable;Landroid/view/textclassifier/TextClassifier;Landroid/view/textclassifier/TextLinksParams;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method private static addLinksAsync(Landroid/text/Spannable;Landroid/view/textclassifier/TextClassifier;Landroid/view/textclassifier/TextLinksParams;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Landroid/view/textclassifier/TextClassifier;",
            "Landroid/view/textclassifier/TextLinksParams;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p3

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    nop

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-interface/range {p1 .. p1}, Landroid/view/textclassifier/TextClassifier;->getMaxGenerateLinksTextLength()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    move-object v9, p0

    invoke-interface {v9, v2, v1}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez p2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/textclassifier/TextLinksParams;->getEntityConfig()Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object v3

    :goto_0
    move-object v10, v3

    new-instance v3, Landroid/view/textclassifier/TextLinks$Request$Builder;

    invoke-direct {v3, v1}, Landroid/view/textclassifier/TextLinks$Request$Builder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/textclassifier/TextLinks$Request$Builder;->setLegacyFallback(Z)Landroid/view/textclassifier/TextLinks$Request$Builder;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/textclassifier/TextLinks$Request$Builder;->setEntityConfig(Landroid/view/textclassifier/TextClassifier$EntityConfig;)Landroid/view/textclassifier/TextLinks$Request$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/textclassifier/TextLinks$Request$Builder;->build()Landroid/view/textclassifier/TextLinks$Request;

    move-result-object v11

    new-instance v12, Landroid/text/util/-$$Lambda$Linkify$hPjCKfcU4vqhADicCa9bWKrOoog;

    move-object/from16 v13, p1

    invoke-direct {v12, v13, v11}, Landroid/text/util/-$$Lambda$Linkify$hPjCKfcU4vqhADicCa9bWKrOoog;-><init>(Landroid/view/textclassifier/TextClassifier;Landroid/view/textclassifier/TextLinks$Request;)V

    new-instance v14, Landroid/text/util/-$$Lambda$Linkify$ZGgxzuK-YqBkZXo_7HE4xwOLsh0;

    move-object v3, v14

    move-object/from16 v4, p4

    move-object v5, v9

    move-object v6, v1

    move-object/from16 v7, p2

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v8}, Landroid/text/util/-$$Lambda$Linkify$ZGgxzuK-YqBkZXo_7HE4xwOLsh0;-><init>(Ljava/util/function/Consumer;Landroid/text/Spannable;Ljava/lang/CharSequence;Landroid/view/textclassifier/TextLinksParams;Ljava/lang/Runnable;)V

    if-nez v0, :cond_1

    invoke-static {v12}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    return-object v3

    :cond_1
    invoke-static {v12, v0}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    return-object v3
.end method

.method public static addLinksAsync(Landroid/widget/TextView;I)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "I)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/view/textclassifier/TextLinksParams;->fromLinkMask(I)Landroid/view/textclassifier/TextLinksParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Landroid/text/util/Linkify;->addLinksAsync(Landroid/widget/TextView;Landroid/view/textclassifier/TextLinksParams;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static addLinksAsync(Landroid/widget/TextView;Landroid/view/textclassifier/TextLinksParams;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Landroid/view/textclassifier/TextLinksParams;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Landroid/text/util/Linkify;->addLinksAsync(Landroid/widget/TextView;Landroid/view/textclassifier/TextLinksParams;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static addLinksAsync(Landroid/widget/TextView;Landroid/view/textclassifier/TextLinksParams;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/concurrent/Future;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Landroid/view/textclassifier/TextLinksParams;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/text/Spannable;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v1

    :goto_0
    new-instance v8, Landroid/text/util/-$$Lambda$Linkify$wWMJCtMwD1HLtUFna4kOfNQK1Z0;

    invoke-direct {v8, p0, v1, v0}, Landroid/text/util/-$$Lambda$Linkify$wWMJCtMwD1HLtUFna4kOfNQK1Z0;-><init>(Landroid/widget/TextView;Landroid/text/Spannable;Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v3

    move-object v2, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, v8

    invoke-static/range {v2 .. v7}, Landroid/text/util/Linkify;->addLinksAsync(Landroid/text/Spannable;Landroid/view/textclassifier/TextClassifier;Landroid/view/textclassifier/TextLinksParams;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    return-object v2
.end method

.method private static final applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V
    .locals 2

    new-instance v0, Landroid/text/style/URLSpan;

    invoke-direct {v0, p0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x21

    invoke-interface {p3, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private static checkBracketsPairs(Landroid/text/util/LinkSpec;)V
    .locals 7

    iget-object v0, p0, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    iget v1, p0, Landroid/text/util/LinkSpec;->end:I

    iget v2, p0, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x29

    if-eq v2, v3, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    add-int/lit8 v4, v1, -0x1

    :goto_0
    if-ltz v4, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x28

    if-ne v5, v6, :cond_2

    add-int/lit8 v2, v2, -0x1

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_3
    if-lez v2, :cond_4

    iget v3, p0, Landroid/text/util/LinkSpec;->end:I

    sub-int/2addr v3, v2

    iput v3, p0, Landroid/text/util/LinkSpec;->end:I

    const/4 v3, 0x0

    iget v4, p0, Landroid/text/util/LinkSpec;->end:I

    iget v5, p0, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public static containsUnsupportedCharacters(Ljava/lang/String;)Z
    .locals 3

    const-string/jumbo v0, "\u202c"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "Linkify"

    const-string v2, "Unsupported character for applying links: u202C"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string/jumbo v0, "\u202d"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Linkify"

    const-string v2, "Unsupported character for applying links: u202D"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const-string/jumbo v0, "\u202e"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Linkify"

    const-string v2, "Unsupported character for applying links: u202E"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static final gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    if-eqz p4, :cond_0

    invoke-interface {p4, p1, v1, v2}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    new-instance v3, Landroid/text/util/LinkSpec;

    invoke-direct {v3}, Landroid/text/util/LinkSpec;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p3, v0, p5}, Landroid/text/util/Linkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    iput v1, v3, Landroid/text/util/LinkSpec;->start:I

    iput v2, v3, Landroid/text/util/LinkSpec;->end:I

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    return-void
.end method

.method private static final gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-static {v0}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v4, Landroid/text/util/LinkSpec;

    invoke-direct {v4}, Landroid/text/util/LinkSpec;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int v6, v2, v5

    add-int v7, v1, v2

    iput v7, v4, Landroid/text/util/LinkSpec;->start:I

    add-int v7, v1, v6

    iput v7, v4, Landroid/text/util/LinkSpec;->end:I

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v7

    add-int/2addr v1, v6

    const/4 v7, 0x0

    :try_start_1
    const-string v8, "UTF-8"

    invoke-static {v3, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v8

    nop

    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "geo:0,0?q="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v8

    goto :goto_0

    :cond_1
    :goto_1
    nop

    move-object v2, v3

    return-void

    :catch_1
    move-exception v2

    return-void
.end method

.method private static gatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Landroid/content/Context;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v6

    if-nez p2, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    :goto_0
    move-object v7, v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    new-instance v3, Landroid/text/util/LinkSpec;

    invoke-direct {v3}, Landroid/text/util/LinkSpec;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start()I

    move-result v4

    iput v4, v3, Landroid/text/util/LinkSpec;->start:I

    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->end()I

    move-result v4

    iput v4, v3, Landroid/text/util/LinkSpec;->end:I

    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5b

    const/4 v8, 0x1

    if-eq v4, v5, :cond_2

    const/16 v5, 0x28

    if-ne v4, v5, :cond_1

    goto :goto_2

    :cond_1
    const/16 v5, 0x2b

    if-ne v4, v5, :cond_3

    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v5, :cond_3

    iget v5, v3, Landroid/text/util/LinkSpec;->start:I

    add-int/2addr v5, v8

    iput v5, v3, Landroid/text/util/LinkSpec;->start:I

    goto :goto_3

    :cond_2
    :goto_2
    iget v5, v3, Landroid/text/util/LinkSpec;->start:I

    add-int/2addr v5, v8

    iput v5, v3, Landroid/text/util/LinkSpec;->start:I

    :cond_3
    :goto_3
    const-string v5, "KR"

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString()Ljava/lang/String;

    move-result-object v8

    iget v9, v3, Landroid/text/util/LinkSpec;->start:I

    iget v10, v3, Landroid/text/util/LinkSpec;->end:I

    invoke-static {v5, v8, v9, v10}, Landroid/text/util/Linkify;->needToAddLink(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v5

    if-nez v5, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    return-void
.end method

.method static synthetic lambda$addLinksAsync$0(Landroid/widget/TextView;Landroid/text/Spannable;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    if-eq p1, p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$addLinksAsync$1(Landroid/view/textclassifier/TextClassifier;Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;
    .locals 1

    invoke-interface {p0, p1}, Landroid/view/textclassifier/TextClassifier;->generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$addLinksAsync$2(Ljava/util/function/Consumer;Landroid/text/Spannable;Ljava/lang/CharSequence;Landroid/view/textclassifier/TextLinksParams;Ljava/lang/Runnable;Landroid/view/textclassifier/TextLinks;)V
    .locals 4

    invoke-virtual {p5}, Landroid/view/textclassifier/TextLinks;->getLinks()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Landroid/view/textclassifier/TextLinks$TextLinkSpan;

    invoke-interface {p1, v0, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/textclassifier/TextLinks$TextLinkSpan;

    array-length v2, v0

    sub-int/2addr v2, v1

    :goto_0
    move v1, v2

    if-ltz v1, :cond_2

    aget-object v2, v0, v1

    invoke-interface {p1, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v2, v1, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p3, p1, p5}, Landroid/view/textclassifier/TextLinksParams;->apply(Landroid/text/Spannable;Landroid/view/textclassifier/TextLinks;)I

    move-result v1

    if-nez v1, :cond_3

    if-eqz p4, :cond_3

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :cond_3
    if-eqz p0, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private static final makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;
    .locals 9

    if-eqz p3, :cond_0

    invoke-interface {p3, p2, p0}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    move v0, v7

    :goto_0
    move v8, v0

    array-length v0, p1

    if-ge v8, v0, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aget-object v3, p1, v8

    const/4 v4, 0x0

    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget-object v3, p1, v8

    const/4 v4, 0x0

    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p1, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v8, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v6, :cond_3

    array-length v0, p1

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method private static needToAddLink(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 9

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    const-string/jumbo v0, "~"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ge p3, v0, :cond_1

    invoke-virtual {p0, p3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v4, p3, 0x1

    if-ge v4, v0, :cond_1

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :cond_1
    const v4, 0xc6d0

    if-eq v2, v4, :cond_9

    const/16 v5, 0x20a9

    if-eq v2, v5, :cond_9

    const/16 v6, 0x20

    if-ne v2, v6, :cond_2

    if-eq v3, v4, :cond_9

    if-ne v3, v5, :cond_2

    goto :goto_2

    :cond_2
    sub-int v4, p3, p2

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eq v4, v5, :cond_3

    return v6

    :cond_3
    const/4 v4, 0x0

    if-lt p2, v6, :cond_4

    add-int/lit8 v5, p2, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :cond_4
    const/16 v5, 0x2c

    if-eq v4, v5, :cond_8

    if-ne v2, v5, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x31

    if-ne v5, v7, :cond_7

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_7

    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x32

    if-eq v7, v8, :cond_6

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x39

    if-eq v5, v7, :cond_6

    goto :goto_0

    :cond_6
    return v6

    :cond_7
    :goto_0
    return v1

    :cond_8
    :goto_1
    return v1

    :cond_9
    :goto_2
    return v1

    :cond_a
    :goto_3
    return v1
.end method

.method private static final pruneOverlaps(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/text/util/LinkSpec;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/text/util/Linkify$4;

    invoke-direct {v0}, Landroid/text/util/Linkify$4;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/util/LinkSpec;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/util/LinkSpec;

    const/4 v5, -0x1

    iget v6, v3, Landroid/text/util/LinkSpec;->start:I

    iget v7, v4, Landroid/text/util/LinkSpec;->start:I

    if-gt v6, v7, :cond_3

    iget v6, v3, Landroid/text/util/LinkSpec;->end:I

    iget v7, v4, Landroid/text/util/LinkSpec;->start:I

    if-le v6, v7, :cond_3

    iget v6, v4, Landroid/text/util/LinkSpec;->end:I

    iget v7, v3, Landroid/text/util/LinkSpec;->end:I

    if-gt v6, v7, :cond_0

    add-int/lit8 v5, v2, 0x1

    goto :goto_1

    :cond_0
    iget v6, v3, Landroid/text/util/LinkSpec;->end:I

    iget v7, v3, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v4, Landroid/text/util/LinkSpec;->end:I

    iget v8, v4, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_1

    add-int/lit8 v5, v2, 0x1

    goto :goto_1

    :cond_1
    iget v6, v3, Landroid/text/util/LinkSpec;->end:I

    iget v7, v3, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v4, Landroid/text/util/LinkSpec;->end:I

    iget v8, v4, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_2

    move v5, v2

    :cond_2
    :goto_1
    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
