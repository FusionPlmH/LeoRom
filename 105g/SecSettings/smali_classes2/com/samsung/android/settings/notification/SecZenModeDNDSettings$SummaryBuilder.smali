.class public Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;
.super Ljava/lang/Object;
.source "SecZenModeDNDSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/SecZenModeDNDSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SummaryBuilder"
.end annotation


# static fields
.field private static final ALL_PRIORITY_CATEGORIES:[I


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;->ALL_PRIORITY_CATEGORIES:[I

    return-void

    :array_0
    .array-data 4
        0x20
        0x40
        0x80
        0x4
        0x2
        0x1
        0x8
        0x10
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getEnabledCategories(Landroid/app/NotificationManager$Policy;Ljava/util/function/Predicate;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/NotificationManager$Policy;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;->ALL_PRIORITY_CATEGORIES:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_b

    aget v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-direct {p0, p1, v4}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v5

    if-eqz v5, :cond_a

    const/16 v5, 0x20

    if-ne v4, v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f122031

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_0
    const/16 v5, 0x40

    if-ne v4, v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f122076

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1
    const/16 v5, 0x80

    if-ne v4, v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f1220b8

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_2
    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    iget v5, p1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f122033

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f1220a4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4
    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f122070

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f12207f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    const/16 v6, 0x8

    const v7, 0x7f122032

    if-ne v4, v6, :cond_9

    iget v6, p1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-nez v6, :cond_7

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    iget v6, p1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-ne v6, v5, :cond_8

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f12205b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f1220b1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    const/16 v5, 0x10

    if-ne v4, v5, :cond_a

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f122081

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_b
    return-object v0
.end method

.method private isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z
    .locals 1

    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getSoundSettingSummary$0(Ljava/lang/Integer;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x20

    if-eq v1, v0, :cond_1

    const/16 v0, 0x40

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/16 v0, 0x80

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public getAutomaticRulesSummary()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;->getEnabledAutomaticRulesCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v2, 0x7f12143a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getBlockedEffectsSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;
    .locals 2

    iget v0, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-static {v0}, Landroid/app/NotificationManager$Policy;->secAreAnyScreenOffEffectsSuppressed(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-static {v0}, Landroid/app/NotificationManager$Policy;->secAreAnyScreenOnEffectsSuppressed(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12170e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-static {v0}, Landroid/app/NotificationManager$Policy;->secAreAllVisualEffectsSuppressed(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121712

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121711

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getEnabledAutomaticRulesCount()I
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AutomaticZenRule;

    const-string v5, "twschedule"

    invoke-virtual {v4}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    goto :goto_0

    :cond_2
    return v0
.end method

.method getPrioritySettingSummary(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v1, 0x7f1215c7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v1, 0x7f12207a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v1, 0x7f120e07

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSoundSettingSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;
    .locals 9

    sget-object v0, Lcom/samsung/android/settings/notification/-$$Lambda$SecZenModeDNDSettings$SummaryBuilder$3TGMMzFs74PtkMZb8u6UHm2lVns;->INSTANCE:Lcom/samsung/android/settings/notification/-$$Lambda$SecZenModeDNDSettings$SummaryBuilder$3TGMMzFs74PtkMZb8u6UHm2lVns;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;->getEnabledCategories(Landroid/app/NotificationManager$Policy;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v3, 0x7f1220d3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v5, 0x7f121714

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f121716

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2
    const/4 v5, 0x3

    if-ne v1, v5, :cond_3

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v7, 0x7f121715

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v4

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v3, 0x7f1220d6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
