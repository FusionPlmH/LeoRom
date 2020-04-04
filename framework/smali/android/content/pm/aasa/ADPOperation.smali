.class public Landroid/content/pm/aasa/ADPOperation;
.super Ljava/lang/Object;
.source "ADPOperation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkContainsList(Ljava/util/ArrayList;Landroid/content/pm/aasa/ADPContainer$ADPPolicy;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/aasa/ADPContainer$ADPPolicy;",
            ">;",
            "Landroid/content/pm/aasa/ADPContainer$ADPPolicy;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;

    invoke-static {v1, p1}, Landroid/content/pm/aasa/ADPOperation;->isAbsolutelyEqual(Landroid/content/pm/aasa/ADPContainer$ADPPolicy;Landroid/content/pm/aasa/ADPContainer$ADPPolicy;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static copyADPPolicy(Landroid/content/pm/aasa/ADPContainer$ADPPolicy;)Landroid/content/pm/aasa/ADPContainer$ADPPolicy;
    .locals 3

    new-instance v0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;

    invoke-direct {v0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->set_pattern(Ljava/lang/String;)Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->set_hashCode(Ljava/lang/String;)Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getVersionType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->set_versionType(I)Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->set_format(Ljava/lang/String;)Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getWipe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->set_wipe(Ljava/lang/String;)Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getRP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->set_rp(Ljava/lang/String;)Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getProduct()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->set_product(Ljava/lang/String;)Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->set_model(Ljava/lang/String;)Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getCarrier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->set_carrier(Ljava/lang/String;)Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getSepVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->set_sep_ver(Ljava/lang/String;)Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;

    invoke-virtual {v0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->createADPPolicy()Landroid/content/pm/aasa/ADPContainer$ADPPolicy;

    move-result-object v1

    return-object v1
.end method

.method public static filterADPPolicy(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/aasa/ADPContainer$ADPPolicy;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/function/Predicate<",
            "Landroid/content/pm/aasa/ADPContainer$ADPPolicy;",
            ">;>;)",
            "Ljava/util/List<",
            "Landroid/content/pm/aasa/ADPContainer$ADPPolicy;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Landroid/content/pm/aasa/-$$Lambda$ADPOperation$7EKjO-40ZKvVpkPZ5ooDRgp58wE;->INSTANCE:Landroid/content/pm/aasa/-$$Lambda$ADPOperation$7EKjO-40ZKvVpkPZ5ooDRgp58wE;

    sget-object v3, Landroid/content/pm/aasa/-$$Lambda$QUF8onbyeRS02cAU5ynoVemHR6I;->INSTANCE:Landroid/content/pm/aasa/-$$Lambda$QUF8onbyeRS02cAU5ynoVemHR6I;

    invoke-interface {v1, v2, v3}, Ljava/util/stream/Stream;->reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Predicate;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static filterADPPolicy(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/aasa/ADPContainer$ADPPolicy;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Landroid/content/pm/aasa/ADPContainer$ADPPolicy;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/aasa/ADPContainer$ADPPolicy;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static getConvertedNumber(Ljava/util/regex/Pattern;Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    if-gt v2, v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method private static getRegexFromVType(I)Ljava/util/regex/Pattern;
    .locals 2

    const-string v0, ""

    if-eqz p0, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "^(\\d?\\d{4})\\d{2}(\\d{3})\\z"

    goto :goto_0

    :pswitch_1
    const-string v0, "^(\\d?\\d{6})\\d{3}\\z"

    goto :goto_0

    :cond_0
    const-string v0, "^(\\d?\\d{9})\\z"

    goto :goto_0

    :cond_1
    const-string v0, "^(\\d?\\d{4})\\d{5}\\z"

    nop

    :goto_0
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static isAbsolutelyEqual(Landroid/content/pm/aasa/ADPContainer$ADPPolicy;Landroid/content/pm/aasa/ADPContainer$ADPPolicy;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getPattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/pm/aasa/ADPOperation;->isEqualWithPossiblyNullObject(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/pm/aasa/ADPOperation;->isEqualWithPossiblyNullObject(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getVersionType()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getVersionType()I

    move-result v2

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/pm/aasa/ADPOperation;->isEqualWithPossiblyNullObject(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getWipe()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getWipe()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/pm/aasa/ADPOperation;->isEqualWithPossiblyNullObject(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    invoke-virtual {p0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getRP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getRP()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/pm/aasa/ADPOperation;->isEqualWithPossiblyNullObject(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    :cond_5
    invoke-virtual {p0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getProduct()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getProduct()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/pm/aasa/ADPOperation;->isEqualWithPossiblyNullObject(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/pm/aasa/ADPOperation;->isEqualWithPossiblyNullObject(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    :cond_7
    invoke-virtual {p0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getCarrier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getCarrier()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/pm/aasa/ADPOperation;->isEqualWithPossiblyNullObject(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getSepVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getSepVer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/pm/aasa/ADPOperation;->isEqualWithPossiblyNullObject(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return v1

    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public static isEqual(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Landroid/content/pm/aasa/ADPOperation;->getRegexFromVType(I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/content/pm/aasa/ADPOperation;->isEqual(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isEqual(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1}, Landroid/content/pm/aasa/ADPOperation;->getConvertedNumber(Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, p2}, Landroid/content/pm/aasa/ADPOperation;->getConvertedNumber(Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    return v0
.end method

.method public static isEqualWithPossiblyNullObject(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public static isGreater(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Landroid/content/pm/aasa/ADPOperation;->getRegexFromVType(I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/content/pm/aasa/ADPOperation;->isGreater(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isGreater(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1}, Landroid/content/pm/aasa/ADPOperation;->getConvertedNumber(Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, p2}, Landroid/content/pm/aasa/ADPOperation;->getConvertedNumber(Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    return v0
.end method

.method public static isGreaterOrEqual(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Landroid/content/pm/aasa/ADPOperation;->getRegexFromVType(I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/content/pm/aasa/ADPOperation;->isGreaterOrEqual(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isGreaterOrEqual(Ljava/lang/String;Landroid/content/pm/aasa/ADPContainer$ADPPolicy;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getVersionType()I

    move-result v1

    const v2, 0x65837583

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getPattern()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Landroid/content/pm/aasa/ADPOperation;->isGreaterOrEqual(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getVersionType()I

    move-result v1

    invoke-virtual {p1}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Landroid/content/pm/aasa/ADPOperation;->isGreaterOrEqual(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public static isGreaterOrEqual(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1}, Landroid/content/pm/aasa/ADPOperation;->getConvertedNumber(Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, p2}, Landroid/content/pm/aasa/ADPOperation;->getConvertedNumber(Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    return v0
.end method

.method public static isMatchPattern(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    return v2
.end method

.method public static isSameCategoryByHashCode(Ljava/lang/String;)Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Predicate<",
            "Landroid/content/pm/aasa/ADPContainer$ADPPolicy;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/content/pm/aasa/-$$Lambda$ADPOperation$bVVT8Kuv40H3lbuE81ROXKui61g;

    invoke-direct {v0, p0}, Landroid/content/pm/aasa/-$$Lambda$ADPOperation$bVVT8Kuv40H3lbuE81ROXKui61g;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static isSameCategoryByPattern(Ljava/lang/String;)Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Predicate<",
            "Landroid/content/pm/aasa/ADPContainer$ADPPolicy;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/content/pm/aasa/-$$Lambda$ADPOperation$dBuRHmLQV78HNfCJ-quNoPpAZZw;

    invoke-direct {v0, p0}, Landroid/content/pm/aasa/-$$Lambda$ADPOperation$dBuRHmLQV78HNfCJ-quNoPpAZZw;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$filterADPPolicy$2(Landroid/content/pm/aasa/ADPContainer$ADPPolicy;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$isSameCategoryByHashCode$0(Ljava/lang/String;Landroid/content/pm/aasa/ADPContainer$ADPPolicy;)Z
    .locals 1

    invoke-virtual {p1, p0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->findMatcherByHashCode(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$isSameCategoryByPattern$1(Ljava/lang/String;Landroid/content/pm/aasa/ADPContainer$ADPPolicy;)Z
    .locals 1

    invoke-virtual {p1, p0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->findMatcherByPattern(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static printADPContainer(Landroid/content/pm/aasa/ADPContainer;)V
    .locals 3

    const-string v0, "ADPOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[+] HASHVALUE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/aasa/ADPContainer;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/pm/aasa/ADPContainer;->getADPPolicy()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;

    invoke-static {v1}, Landroid/content/pm/aasa/ADPOperation;->printADPPolicy(Landroid/content/pm/aasa/ADPContainer$ADPPolicy;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static printADPPolicy(Landroid/content/pm/aasa/ADPContainer$ADPPolicy;)V
    .locals 3

    const-string v0, "ADPOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tpattern = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getPattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ADPOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t  hashCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ADPOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t  versionType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getVersionType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getFormat()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "ADPOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t  format = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getWipe()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "ADPOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t  wipe = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getWipe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getRP()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "ADPOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t  rp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getRP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getModel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "ADPOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t  model = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getProduct()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "ADPOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t  product = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getProduct()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getCarrier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "ADPOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t  carrier = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getCarrier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getSepVer()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "ADPOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t  sep = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getSepVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method public static printDebug(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/aasa/ADPContainer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ADPOperation"

    const-string/jumbo v1, "print adp container"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/aasa/ADPContainer;

    invoke-static {v3}, Landroid/content/pm/aasa/ADPOperation;->printADPContainer(Landroid/content/pm/aasa/ADPContainer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static removeDuplicates(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(",
            "Ljava/util/ArrayList<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    invoke-interface {v4, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    goto :goto_0

    :cond_2
    return-object v0
.end method
