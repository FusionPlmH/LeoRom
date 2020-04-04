.class public Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "DataUsageReminderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;,
        Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;,
        Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;

.field private mContext:Landroid/content/Context;

.field private mDescView:Landroid/widget/TextView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field private mMobileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

.field private mUidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWlanList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mUidList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mMobileList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mWlanList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mUidList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mWlanList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mMobileList:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->finish()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.settings.NETWORKMANAGER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "is_from_datausage_notification"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "uids"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mUidList:Ljava/util/ArrayList;

    const-string/jumbo v1, "wlan"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mWlanList:Ljava/util/ArrayList;

    const-string v1, "mobile"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mMobileList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mUidList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mWlanList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mMobileList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mContext:Landroid/content/Context;

    const-string v2, "datausage"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0d016a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    iget-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v5, 0x102000a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mListView:Landroid/widget/ListView;

    iget-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v5, 0x7f0a0217

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mDescView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    new-instance v5, Lcom/android/settingslib/net/UidDetailProvider;

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/settingslib/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    new-instance v5, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    invoke-direct {v5, p0, v4, v6, v3}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;-><init>(Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;Landroid/os/UserManager;Lcom/android/settingslib/net/UidDetailProvider;I)V

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mAdapter:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mAdapter:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mAdapter:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;

    invoke-virtual {v5}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->bindStats()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f120639

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f12105f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f12123d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->setupAlert()V

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mDescView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mContext:Landroid/content/Context;

    const v7, 0x7f120637

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "totalBytes"

    const-wide/16 v11, 0x0

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, "DataUsageReminderActivity_YIN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Extra Error mUidList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mUidList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mWlanList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mWlanList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mMobileList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mMobileList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->finish()V

    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    invoke-virtual {v0}, Lcom/android/settingslib/net/UidDetailProvider;->clearCache()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->finish()V

    return-void
.end method
