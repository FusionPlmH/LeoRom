.class public Lcom/android/internal/app/LocaleStore;
.super Ljava/lang/Object;
.source "LocaleStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocaleStore$LocaleInfo;
    }
.end annotation


# static fields
.field private static final FULLNAME_SERBIAN:Ljava/lang/String; = "Srpski"

.field private static final LANGUAGE_NAME_SERBIAN:Ljava/lang/String; = "sr"

.field private static final LANGUAGE_XML:Ljava/lang/String; = "/system/csc/language.xml"

.field private static final LANGUAGE_XML_OMC_V1_DIR:Ljava/lang/String; = "/data/omc/etc"

.field private static final TAG:Ljava/lang/String; = "LocaleStore"

.field private static final TAG_DISPLAY:Ljava/lang/String; = "Display"

.field private static final TAG_LANGUAGE:Ljava/lang/String; = "LanguageSet"

.field private static final TAG_NONSUGGESTED:Ljava/lang/String; = "NonSuggested"

.field private static final TAG_NOT_DISPLAY:Ljava/lang/String; = "NonDisplay"

.field private static final TAG_SUGGESTED:Ljava/lang/String; = "Suggested"

.field private static final XML_LOCALES_INDEX_NO_SUGGESTED:I = 0x3

.field private static final XML_LOCALES_INDEX_SUGGESTED:I = 0x2

.field private static final XML_LOCALES_INDEX_SUPPORTED:I = 0x0

.field private static final XML_LOCALES_INDEX_UNSUPPORTED:I = 0x1

.field private static final XML_LOCALES_SIZE:I = 0x4

.field private static sCountryMode:Z

.field private static final sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sPrevDefaultLocaleList:Landroid/os/LocaleList;

.field private static final sPriorityLocale:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/android/internal/app/LocaleStore;->isChina()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "zh"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    sput-object v0, Lcom/android/internal/app/LocaleStore;->sPriorityLocale:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/app/LocaleStore;->sPrevDefaultLocaleList:Landroid/os/LocaleList;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/app/LocaleStore;->sCountryMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/internal/app/LocaleStore;->sPriorityLocale:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/app/LocaleStore;->sCountryMode:Z

    return v0
.end method

.method private static addSuggestedLocalesForRegion(Ljava/util/Locale;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    sget-object v1, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->access$276(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    :cond_2
    goto :goto_0

    :cond_3
    return-void
.end method

.method private static buildLocaleCache(Landroid/content/Context;[Ljava/lang/String;Z)V
    .locals 16

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    if-eqz p2, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/android/internal/app/LocalePicker;->getSpecificCustomerSupportedLocales(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/android/internal/app/LocalePicker;->getSupportedLocales(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p1, :cond_1

    aget-object v1, p1, v5

    aget-object v2, p1, v6

    const/4 v7, 0x2

    aget-object v3, p1, v7

    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/android/internal/app/LocaleStore;->getSimCountries(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v7

    array-length v8, v4

    :goto_1
    if-ge v5, v8, :cond_a

    aget-object v9, v4, v5

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_9

    new-instance v10, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/4 v11, 0x0

    invoke-direct {v10, v9, v11}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/lang/String;Lcom/android/internal/app/LocaleStore$1;)V

    invoke-virtual {v10}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {v1, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-static {v10, v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->access$276(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    const/16 v13, 0x8

    invoke-static {v10, v13}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->access$276(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    :cond_4
    invoke-virtual {v2, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v10}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-static {v10, v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->access$276(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    :cond_6
    sget-object v13, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v13, v12, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v13

    if-eqz v13, :cond_8

    invoke-virtual {v13}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_7

    sget-object v6, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v14}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    sget-object v6, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-direct {v0, v13, v11}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$1;)V

    invoke-virtual {v6, v14, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    const-string v0, "LocaleStore"

    const-string/jumbo v6, "put null key to sLocaleCache #2"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_2
    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    goto :goto_1

    :cond_9
    new-instance v0, Ljava/util/IllformedLocaleException;

    const-string v5, "Bad locale entry in locale_config.xml"

    invoke-direct {v0, v5}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    return-void
.end method

.method public static fillCache(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/app/LocaleStore;->fillCacheManaged(Landroid/content/Context;Z)V

    return-void
.end method

.method public static fillCacheManaged(Landroid/content/Context;Z)V
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lcom/android/internal/app/LocaleStore;->sPrevDefaultLocaleList:Landroid/os/LocaleList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/app/LocaleStore;->sPrevDefaultLocaleList:Landroid/os/LocaleList;

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "/system/csc/language.xml"

    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "persist.sys.omc_path"

    const-string v7, "/data/omc/etc"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/language.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "persist.sys.omc_etcpath"

    const-string v8, "/data/omc/etc"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/language.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v3, v5

    goto :goto_0

    :cond_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v3, v6

    :cond_2
    :goto_0
    invoke-static {v3}, Lcom/android/internal/app/LocaleStore;->getLocaleListFromXML(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v7, 0x3

    aget-object v4, v2, v7

    :cond_3
    const/4 v7, 0x0

    invoke-static {v0, v2, v7}, Lcom/android/internal/app/LocaleStore;->buildLocaleCache(Landroid/content/Context;[Ljava/lang/String;Z)V

    const/4 v8, 0x1

    invoke-static {v0, v2, v8}, Lcom/android/internal/app/LocaleStore;->buildLocaleCache(Landroid/content/Context;[Ljava/lang/String;Z)V

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getSystemAssetLocales()[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v11, v7

    :goto_1
    if-ge v11, v10, :cond_a

    aget-object v12, v9, v11

    new-instance v13, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/4 v14, 0x0

    invoke-direct {v13, v12, v14}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/lang/String;Lcom/android/internal/app/LocaleStore$1;)V

    invoke-virtual {v13}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_8

    const/4 v15, 0x0

    sget-object v1, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v13}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v13}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    :cond_4
    :goto_2
    move-object v1, v15

    goto :goto_3

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->access$400(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    goto :goto_2

    :goto_3
    if-eqz v1, :cond_7

    invoke-virtual {v13}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x0

    invoke-static {v1, v7}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->access$202(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    const/4 v7, 0x2

    invoke-static {v1, v7}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->access$276(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    const/4 v7, 0x4

    invoke-static {v1, v7}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->access$276(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v7, 0x4

    goto :goto_5

    :cond_8
    move v7, v1

    :goto_5
    if-eqz p1, :cond_9

    invoke-static {v13}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->access$400(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v11, v11, 0x1

    move v1, v7

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_a
    if-eqz p1, :cond_c

    sget-object v1, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-static {v7}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->access$400(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v7, v10}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setTranslated(Z)V

    goto :goto_6

    :cond_b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/LocaleStore;->addSuggestedLocalesForRegion(Ljava/util/Locale;)V

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v1

    sput-object v1, Lcom/android/internal/app/LocaleStore;->sPrevDefaultLocaleList:Landroid/os/LocaleList;

    :cond_c
    return-void
.end method

.method private static findTagValue([Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 10

    const-string v0, ""

    array-length v1, p0

    const/4 v2, 0x0

    move-object v3, p1

    move p1, v2

    :goto_0
    if-ge p1, v1, :cond_3

    aget-object v4, p0, p1

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    move-object v7, v3

    move v3, v2

    :goto_1
    if-ge v3, v6, :cond_1

    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v7, v8

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move-object v3, v7

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_6

    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    aget-object p1, p0, p1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    :cond_5
    const-string v1, "\\s"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    :goto_2
    return-object v0
.end method

.method public static getAllLocaleInfos(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/app/LocaleStore;->fillCacheManaged(Landroid/content/Context;Z)V

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v1, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-static {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->access$200(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {v3, v3}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/app/LocaleStore;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    sget-object v1, Lcom/android/internal/app/LocaleStore;->sPriorityLocale:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    sget-object v5, Lcom/android/internal/app/LocaleStore;->sPriorityLocale:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/app/LocaleStore;->isConfigLocale(Ljava/lang/String;Ljava/util/Locale;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    goto :goto_1

    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method private static getLevel(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "Z)I"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->access$600(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    return v2

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isTranslated()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public static getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "Z)",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lcom/android/internal/app/LocaleStore;->sCountryMode:Z

    invoke-static {p0}, Lcom/android/internal/app/LocaleStore;->fillCache(Landroid/content/Context;)V

    if-nez p2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sget-object v3, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-static {p1, v4, p3}, Lcom/android/internal/app/LocaleStore;->getLevel(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    if-eqz p2, :cond_2

    invoke-virtual {v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    invoke-static {v4, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->access$700(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    const/4 v7, 0x4

    invoke-static {v4, v7}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->access$700(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v6, v7}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->access$276(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    :cond_5
    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    goto :goto_2

    :cond_7
    return-object v2
.end method

.method public static getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .locals 4

    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$1;)V

    move-object v1, v2

    sget-object v2, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    goto :goto_0

    :cond_1
    const-string v2, "LocaleStore"

    const-string/jumbo v3, "put null key to sLocaleCache #3"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1
.end method

.method private static getLocaleListFromXML(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object v2, v1

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v6
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v6

    :cond_0
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "LocaleStore"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v3

    const-string v4, "LocaleStore"

    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v3

    const-string v4, "LocaleStore"

    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_1
    if-nez v2, :cond_1

    return-object v1

    :cond_1
    const-string v1, "LanguageSet"

    const-string v3, "Display"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const-string v3, "LanguageSet"

    const-string v4, "NonDisplay"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "LanguageSet"

    const-string v5, "Suggested"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "LanguageSet"

    const-string v6, "NonSuggested"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/app/LocaleStore;->findTagValue([Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x1

    invoke-static {v3, v2}, Lcom/android/internal/app/LocaleStore;->findTagValue([Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x2

    invoke-static {v4, v2}, Lcom/android/internal/app/LocaleStore;->findTagValue([Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x3

    invoke-static {v5, v2}, Lcom/android/internal/app/LocaleStore;->findTagValue([Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    return-object v0
.end method

.method private static getSimCountries(Landroid/content/Context;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method private static isChina()Z
    .locals 2

    const-string v0, "CHINA"

    const-string/jumbo v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isConfigLocale(Ljava/lang/String;Ljava/util/Locale;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static updateSimCountries(Landroid/content/Context;)V
    .locals 4

    invoke-static {p0}, Lcom/android/internal/app/LocaleStore;->getSimCountries(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->access$276(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method
