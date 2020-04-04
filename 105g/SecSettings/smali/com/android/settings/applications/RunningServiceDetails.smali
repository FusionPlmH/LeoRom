.class public Lcom/android/settings/applications/RunningServiceDetails;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "RunningServiceDetails.java"

# interfaces
.implements Lcom/android/settings/applications/RunningState$OnRefreshUiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;,
        Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;
    }
.end annotation


# static fields
.field private static final KNOX_PROTECTED_APP_LIST:[Ljava/lang/String;


# instance fields
.field final mActiveDetails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;",
            ">;"
        }
    .end annotation
.end field

.field mAllDetails:Landroid/view/ViewGroup;

.field mAm:Landroid/app/ActivityManager;

.field mBuilder:Ljava/lang/StringBuilder;

.field mHaveData:Z

.field mInflater:Landroid/view/LayoutInflater;

.field private mIsStopSystemAppAllowed:I

.field mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

.field mNumProcesses:I

.field mNumServices:I

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPm:Landroid/content/pm/PackageManager;

.field mProcessName:Ljava/lang/String;

.field mProcessesHeader:Landroid/widget/TextView;

.field mRootView:Landroid/view/View;

.field mServicesHeader:Landroid/widget/TextView;

.field mShowBackground:Z

.field mSnippet:Landroid/view/ViewGroup;

.field mSnippetActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

.field mSnippetViewHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

.field mState:Lcom/android/settings/applications/RunningState;

.field mUid:I

.field mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const-string v0, "com.sec.knox.bridge"

    const-string v1, "com.samsung.android.bbc.bbcagent"

    const-string v2, "com.samsung.knox.rcp.components"

    const-string v3, "com.samsung.knox.kss"

    const-string v4, "com.sec.knox.shortcutsms"

    const-string v5, "com.sec.knox.containeragent2"

    const-string v6, "com.sec.knox.foldercontainer"

    const-string v7, "com.sec.knox.packageverifier"

    const-string v8, "com.sec.knox.knoxsetupwizardclient"

    const-string v9, "com.sec.knox.switcher"

    const-string v10, "com.sec.knox.switchknoxI"

    const-string v11, "com.sec.knox.switchknoxII"

    const-string v12, "com.samsung.knox.appsupdateagent"

    const-string v13, "com.samsung.android.irm.service"

    const-string v14, "com.samsung.android.irm.agent"

    filled-new-array/range {v0 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/RunningServiceDetails;->KNOX_PROTECTED_APP_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mPm:Landroid/content/pm/PackageManager;

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mIsStopSystemAppAllowed:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/RunningServiceDetails;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/RunningServiceDetails;->showConfirmStopDialog(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/applications/RunningServiceDetails;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/RunningServiceDetails;->finish()V

    return-void
.end method

.method private finish()V
    .locals 1

    new-instance v0, Lcom/android/settings/applications/-$$Lambda$RunningServiceDetails$YTkFZYBIB00Mbz3Oy26GxrtuRF0;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/-$$Lambda$RunningServiceDetails$YTkFZYBIB00Mbz3Oy26GxrtuRF0;-><init>(Lcom/android/settings/applications/RunningServiceDetails;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$finish$0(Lcom/android/settings/applications/RunningServiceDetails;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method private showConfirmStopDialog(Landroid/content/ComponentName;)V
    .locals 3

    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;->newConfirmStop(ILandroid/content/ComponentName;)Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmstop"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method activeDetailForService(Landroid/content/ComponentName;)Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;

    iget-object v2, v1, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method addDetailViews()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;

    iget-object v3, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mNumProcesses:I

    iput v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mNumServices:I

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mShowBackground:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v3, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v3, v3, Lcom/android/settings/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    :goto_1
    move v3, v0

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v4, v1, v0}, Lcom/android/settings/applications/RunningServiceDetails;->addDetailsViews(Lcom/android/settings/applications/RunningState$MergedItem;ZZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    move v3, v0

    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/settings/applications/RunningServiceDetails;->addDetailsViews(Lcom/android/settings/applications/RunningState$MergedItem;ZZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/settings/applications/RunningServiceDetails;->addDetailsViews(Lcom/android/settings/applications/RunningState$MergedItem;ZZ)V

    :cond_7
    :goto_4
    return-void
.end method

.method addDetailsViews(Lcom/android/settings/applications/RunningState$MergedItem;ZZ)V
    .locals 5

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move v2, v0

    :goto_0
    iget-object v3, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/RunningState$ServiceItem;

    invoke-virtual {p0, v3, p1, v1, v1}, Lcom/android/settings/applications/RunningServiceDetails;->addServiceDetailsView(Lcom/android/settings/applications/RunningState$ServiceItem;Lcom/android/settings/applications/RunningState$MergedItem;ZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_6

    iget-object v2, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_2

    const/4 v2, 0x0

    iget v3, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/android/settings/applications/RunningServiceDetails;->addServiceDetailsView(Lcom/android/settings/applications/RunningState$ServiceItem;Lcom/android/settings/applications/RunningState$MergedItem;ZZ)V

    goto :goto_6

    :cond_2
    const/4 v2, -0x1

    :goto_2
    iget-object v3, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    if-gez v2, :cond_3

    iget-object v3, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    goto :goto_3

    :cond_3
    iget-object v3, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/RunningState$ProcessItem;

    :goto_3
    if-eqz v3, :cond_4

    iget v4, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-gtz v4, :cond_4

    goto :goto_5

    :cond_4
    if-gez v2, :cond_5

    move v4, v1

    goto :goto_4

    :cond_5
    move v4, v0

    :goto_4
    invoke-virtual {p0, v3, v4}, Lcom/android/settings/applications/RunningServiceDetails;->addProcessDetailsView(Lcom/android/settings/applications/RunningState$ProcessItem;Z)V

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    :goto_6
    return-void
.end method

.method addProcessDetailsView(Lcom/android/settings/applications/RunningState$ProcessItem;Z)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->addProcessesHeader()V

    new-instance v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/settings/applications/RunningServiceDetails;)V

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    const v4, 0x7f0d010a

    invoke-virtual {v1, v4, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v1, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    new-instance v2, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v2, v1}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v2, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v2, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v4, p0, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v5, p0, Lcom/android/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, p1, v5}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    const v2, 0x7f0a01a5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget v4, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-eq v4, v5, :cond_0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_0
    if-eqz p2, :cond_1

    const v3, 0x7f120e15

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    iget v8, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    packed-switch v8, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const v4, 0x7f121162

    iget-object v8, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v8, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    invoke-virtual {v8, v9, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v9, v10, v8}, Lcom/android/settings/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;

    move-result-object v9
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v9

    goto :goto_1

    :catch_0
    move-exception v8

    goto :goto_1

    :pswitch_1
    const v4, 0x7f121161

    iget-object v8, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v8, :cond_2

    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    invoke-virtual {v8, v9, v3}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v8, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-static {v9, v10, v8}, Lcom/android/settings/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;

    move-result-object v9
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v9

    :goto_0
    goto :goto_1

    :catch_1
    move-exception v8

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v5, v9, v3

    invoke-virtual {v8, v4, v9}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method addProcessesHeader()V
    .locals 4

    iget v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mNumProcesses:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d02f1

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    const v1, 0x7f121291

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mNumProcesses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mNumProcesses:I

    return-void
.end method

.method addServiceDetailsView(Lcom/android/settings/applications/RunningState$ServiceItem;Lcom/android/settings/applications/RunningState$MergedItem;ZZ)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-eqz p3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/RunningServiceDetails;->addServicesHeader()V

    goto :goto_0

    :cond_0
    iget v0, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eq v0, v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/RunningServiceDetails;->addProcessesHeader()V

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    move-object v0, v2

    goto :goto_1

    :cond_2
    move-object v0, v3

    :goto_1
    move-object v4, v0

    new-instance v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/settings/applications/RunningServiceDetails;)V

    move-object v5, v0

    iget-object v0, v1, Lcom/android/settings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0d010b

    iget-object v7, v1, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    iget-object v0, v1, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v6, v5, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    iput-object v2, v5, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    new-instance v0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v0, v6}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, v5, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v5, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v7, v1, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v9, v1, Lcom/android/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v4, v9}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    iput-object v0, v5, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    const/16 v0, 0x8

    if-nez p4, :cond_3

    const v9, 0x7f0a0719

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    if-eqz v2, :cond_4

    iget-object v9, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v9, v9, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v9, :cond_4

    iget-object v9, v1, Lcom/android/settings/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    iget-object v10, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v10, v10, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Landroid/app/ActivityManager;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v9

    iput-object v9, v5, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    :cond_4
    const v9, 0x7f0a01a5

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f0a045f

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, v5, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    const v10, 0x7f0a0687

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, v5, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    if-eqz p3, :cond_5

    iget v10, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    if-eq v10, v11, :cond_5

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const v8, 0x7f0a01da

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b

    :cond_5
    const/4 v10, 0x1

    if-eqz v2, :cond_6

    iget-object v0, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget v0, v0, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    if-eqz v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v11, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v12, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget v12, v12, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    iget-object v13, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v11, v12, v13}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_6
    iget-boolean v0, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mBackground:Z

    if-eqz v0, :cond_7

    const v0, 0x7f120218

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    :cond_7
    iget-object v0, v5, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_8

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v11, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v11, v11, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    invoke-virtual {v0, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iget-object v11, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v11, v11, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const v13, 0x7f121782

    new-array v14, v10, [Ljava/lang/Object;

    aput-object v11, v14, v8

    invoke-virtual {v12, v13, v14}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_2
    goto :goto_4

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v2, :cond_9

    const v11, 0x7f121787

    goto :goto_3

    :cond_9
    const v11, 0x7f120b18

    :goto_3
    invoke-virtual {v0, v11}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object v0, v5, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v5, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v11

    iget-object v12, v5, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v12, :cond_a

    const v12, 0x7f121781

    goto :goto_5

    :cond_a
    const v12, 0x7f121786

    :goto_5
    invoke-virtual {v11, v12}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v5, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_b

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v5, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_b
    const-string v0, "com.samsung.android.themecenter"

    iget-object v11, v1, Lcom/android/settings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v5, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_c
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v11, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v0, v11}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "com.sec.sprextension"

    iget-object v11, v1, Lcom/android/settings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "com.sec.sprextension.phoneinfo"

    iget-object v11, v1, Lcom/android/settings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    iget-object v0, v5, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_6

    :cond_e
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v11, "CscFeature_Common_EnableItsOn"

    invoke-virtual {v0, v11}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "com.itsoninc.android.itsonclient"

    iget-object v11, v1, Lcom/android/settings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "com.itsoninc.android.itsonservice"

    iget-object v11, v1, Lcom/android/settings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "com.itsoninc.android.uid"

    iget-object v11, v1, Lcom/android/settings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    iget-object v0, v5, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_10
    :goto_6
    :try_start_1
    iget v0, v1, Lcom/android/settings/applications/RunningServiceDetails;->mIsStopSystemAppAllowed:I

    const/4 v11, -0x1

    if-eq v0, v11, :cond_11

    iget v0, v1, Lcom/android/settings/applications/RunningServiceDetails;->mIsStopSystemAppAllowed:I

    if-eq v0, v10, :cond_11

    iget-object v0, v1, Lcom/android/settings/applications/RunningServiceDetails;->mPm:Landroid/content/pm/PackageManager;

    const-string v11, "android"

    const/16 v12, 0x40

    invoke-virtual {v0, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v11, v1, Lcom/android/settings/applications/RunningServiceDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v11, :cond_11

    iget-object v11, v1, Lcom/android/settings/applications/RunningServiceDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v11, v11, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v11, :cond_11

    iget-object v11, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v11, v11, v8

    iget-object v12, v1, Lcom/android/settings/applications/RunningServiceDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v12, v12, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v12, v12, v8

    invoke-virtual {v11, v12}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    iget-object v11, v5, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v11, v8}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_11
    goto :goto_7

    :catch_1
    move-exception v0

    const-string v11, "RunningServicesDetails"

    const-string v12, "Unable to get package info"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    sget-object v11, Lcom/android/settings/applications/RunningServiceDetails;->KNOX_PROTECTED_APP_LIST:[Ljava/lang/String;

    array-length v12, v11

    move v13, v8

    :goto_8
    if-ge v13, v12, :cond_13

    aget-object v0, v11, v13

    move-object v14, v0

    :try_start_2
    iget-object v0, v1, Lcom/android/settings/applications/RunningServiceDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_12

    iget-object v0, v1, Lcom/android/settings/applications/RunningServiceDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, v1, Lcom/android/settings/applications/RunningServiceDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, v5, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    const-string v0, "RunningServicesDetails"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "KNOX_PROTECTED_APP_LIST : "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_12
    goto :goto_9

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_9
    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x1

    goto :goto_8

    :cond_13
    iget-object v0, v5, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v5, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    const v8, 0x10408c0

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setText(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v8, "send_action_app_error"

    const/4 v10, 0x0

    invoke-static {v0, v8, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_15

    if-eqz v2, :cond_15

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v10, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v11, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v8, v10, v11}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v8

    iput-object v8, v5, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    iget-object v8, v5, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    iget-object v10, v5, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    if-eqz v10, :cond_14

    const/4 v10, 0x1

    goto :goto_a

    :cond_14
    const/4 v10, 0x0

    :goto_a
    invoke-virtual {v8, v10}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_b

    :cond_15
    iget-object v8, v5, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_b
    iget-object v0, v1, Lcom/android/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addServicesHeader()V
    .locals 4

    iget v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mNumServices:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d02f1

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    const v1, 0x7f121292

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mNumServices:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mNumServices:I

    return-void
.end method

.method ensureData()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mHaveData:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mHaveData:Z

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v1, p0}, Lcom/android/settings/applications/RunningState;->resume(Lcom/android/settings/applications/RunningState$OnRefreshUiListener;)V

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settings/applications/RunningState;->waitForData()V

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningServiceDetails;->refreshUi(Z)V

    :cond_0
    return-void
.end method

.method findMergedItem()Z
    .locals 7

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mShowBackground:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settings/applications/RunningState;->getCurrentBackgroundItems()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settings/applications/RunningState;->getCurrentMergedItems()Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_5

    move v3, v2

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v5, v4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    iget v6, p0, Lcom/android/settings/applications/RunningServiceDetails;->mUserId:I

    if-eq v5, v6, :cond_1

    goto :goto_2

    :cond_1
    iget v5, p0, Lcom/android/settings/applications/RunningServiceDetails;->mUid:I

    if-ltz v5, :cond_2

    iget-object v5, v4, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v5, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mUid:I

    iget v6, p0, Lcom/android/settings/applications/RunningServiceDetails;->mUid:I

    if-eq v5, v6, :cond_2

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/android/settings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, v4, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v6, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    move-object v0, v4

    nop

    :cond_5
    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    if-eq v3, v0, :cond_6

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    const/4 v2, 0x1

    return v2

    :cond_6
    return v2
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x55

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningServiceDetails;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "uid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mUid:I

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "user_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mUserId:I

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "process"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "background"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mShowBackground:Z

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/android/settings/applications/RunningState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v2, "isStopSystemAppAllowed"

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mIsStopSystemAppAllowed:I

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mPm:Landroid/content/pm/PackageManager;

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    const/16 v2, 0x2240

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RunningServicesDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception when retrieving package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    const v1, 0x7f0d0109

    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-static {p2, v1, v1, v0}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    iput-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mRootView:Landroid/view/View;

    const v0, 0x7f0a006a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const v0, 0x7f0a0799

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    new-instance v0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    invoke-direct {v0, v2}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippetViewHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->ensureData()V

    return-object v1
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mHaveData:Z

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->pause()V

    return-void
.end method

.method public onRefreshUi(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningServiceDetails;->refreshUi(Z)V

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningServiceDetails;->refreshUi(Z)V

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->updateTimes()V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->ensureData()V

    return-void
.end method

.method refreshUi(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->findMergedItem()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippetViewHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    const v1, 0x7f120fd5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->addDetailViews()V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/applications/RunningServiceDetails;->finish()V

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method updateTimes()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;

    iget-object v1, v1, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
