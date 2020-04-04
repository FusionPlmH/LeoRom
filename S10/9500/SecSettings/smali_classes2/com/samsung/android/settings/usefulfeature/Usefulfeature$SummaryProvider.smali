.class Lcom/samsung/android/settings/usefulfeature/Usefulfeature$SummaryProvider;
.super Ljava/lang/Object;
.source "Usefulfeature.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/Usefulfeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSummaryBuilder:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSummaryBuilder;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$SummaryProvider;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    new-instance v0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSummaryBuilder;

    const-class v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSummaryBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$SummaryProvider;->mSummaryBuilder:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSummaryBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$SummaryProvider;->mSummaryBuilder:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSummaryBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSummaryBuilder;->init()V

    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$SummaryProvider;->mSummaryBuilder:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSummaryBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSummaryBuilder;->init()V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$SummaryProvider;->mSummaryBuilder:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSummaryBuilder;

    const/16 v2, 0x320

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$SummaryProvider;->mContext:Landroid/content/Context;

    const v4, 0x7f120e79

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSummaryBuilder;->addSummary(ILjava/lang/String;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$SummaryProvider;->mSummaryBuilder:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSummaryBuilder;

    const/16 v2, 0x384

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$SummaryProvider;->mContext:Landroid/content/Context;

    const v4, 0x7f121036

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSummaryBuilder;->addSummary(ILjava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$SummaryProvider;->mSummaryBuilder:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSummaryBuilder;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSummaryBuilder;->buildSummaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
