.class Lcom/android/settings/Settings$HelpActivity$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings$HelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/settings/Utils;->getOnlineHelpMenuState(Landroid/content/Context;)Lcom/android/settings/Utils$OnlineHelpMenuState;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v3, v0, Lcom/android/settings/Utils$OnlineHelpMenuState;->removeTile:Z

    if-nez v3, :cond_0

    new-instance v3, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v3, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v4, "user_manual_launch"

    iput-object v4, v3, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    iget v4, v0, Lcom/android/settings/Utils$OnlineHelpMenuState;->titleRes:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    iget v4, v0, Lcom/android/settings/Utils$OnlineHelpMenuState;->iconRes:I

    iput v4, v3, Lcom/android/settings/search/SearchIndexableRaw;->iconResId:I

    iget v4, v0, Lcom/android/settings/Utils$OnlineHelpMenuState;->titleRes:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    const v4, 0x7f120b1c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    const-string v4, "android.intent.action.MAIN"

    iput-object v4, v3, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    const-string v4, "com.android.settings"

    iput-object v4, v3, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    const-class v4, Lcom/android/settings/Settings$HelpActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v1
.end method
