.class public Lcom/samsung/android/settings/mirrorlink/MirrorLink;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MirrorLink.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private handler:Landroid/os/Handler;

.field private final lock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mIsBound:Z

.field private mIsNcmConnected:Z

.field private mListDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;",
            ">;"
        }
    .end annotation
.end field

.field private mMLUeventStarted:Z

.field private mMassStorageActive:Z

.field mMenuMore:Landroid/view/MenuItem;

.field private mMirrorLinkAppCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mServiceCon:Landroid/content/ServiceConnection;

.field private mSwitchNotSet:Z

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherChoice:I

.field private mUEventObserver:Landroid/os/UEventObserver;

.field private mUsbConfigured:Z

.field private mUsbConnected:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

.field private mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$5;

    invoke-direct {v0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink$5;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/support/v7/preference/PreferenceCategory;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mSwitchNotSet:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMLUeventStarted:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbConnected:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbConfigured:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mIsNcmConnected:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMassStorageActive:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mTetherChoice:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mIsBound:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->lock:Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink$1;-><init>(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)V

    iput-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUEventObserver:Landroid/os/UEventObserver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mListDevices:Ljava/util/List;

    return-void
.end method

.method private BindToMLService()Z
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.MIRRORLINK_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.mirrorlink"

    const-string v3, "com.samsung.android.mirrorlink.service.TmsService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "MirrorLink"

    const-string v3, "Unable to resolve MIRRORLINK_MANAGER_SERVICE service."

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mIsBound:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mServiceCon:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mIsBound:Z

    :cond_1
    return v2
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMLUeventStarted:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMLUeventStarted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Lcom/mirrorlink/android/service/IMirrorlinkManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mListDevices:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Lcom/mirrorlink/android/service/IMirrorlinkManager;)Lcom/mirrorlink/android/service/IMirrorlinkManager;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mSwitchNotSet:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->updateMirrorLinkApplications()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbConnected:Z

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbConfigured:Z

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbConfigured:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mIsNcmConnected:Z

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mIsNcmConnected:Z

    return p1
.end method

.method static synthetic access$602(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->updateState()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private doUnbindFromService()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "MirrorLink: doUnbindFromService"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mIsBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mServiceCon:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mIsBound:Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    :cond_1
    return-void
.end method

.method private setNcmTethering(Z)V
    .locals 5

    const-string v0, "usb"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setUsb30Mode(Z)V

    :cond_0
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/sys/class/android_usb/android0/terminal_version"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/PrintWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    if-eqz p1, :cond_1

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    nop

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "MirrorLink FileNotFoundException"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->semSetNcmTethering(Z)I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    const v3, 0x7f12154f

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "usb_tethering_enabled"

    iget-object v4, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v4}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private startTethering()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mTetherChoice:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->setNcmTethering(Z)V

    nop

    :goto_0
    return-void
.end method

.method private updateMirrorLinkApplications()V
    .locals 13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v3, "MirrorLink"

    const-string v4, "updateMirrorLinkApplications() getPackageManager returns null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    invoke-interface {v4}, Lcom/mirrorlink/android/service/IMirrorlinkManager;->getAllAppList()Ljava/util/List;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "MirrorLink"

    const-string v6, "Exception while receiving all Application List through AIDl"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    if-nez v3, :cond_3

    const-string v4, "MirrorLink"

    const-string v5, "AppList is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_2
    return-void

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/support/v7/preference/PreferenceCategory;

    const/4 v5, 0x0

    if-nez v4, :cond_4

    new-instance v4, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string v6, "mirror_link_applications"

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/support/v7/preference/PreferenceCategory;

    const v6, 0x7f12153f

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const v8, 0x7f12154a

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    :goto_1
    const/4 v4, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mListDevices:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    const-string v6, "MirrorLink"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No of apps: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_5

    new-instance v6, Lcom/samsung/android/settings/mirrorlink/MirrorLinkNoAppsPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkNoAppsPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const v7, 0x7f121546

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkNoAppsPreference;->setTitle(I)V

    iget-object v7, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v7, v6}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_5
    move-object v6, v4

    move v4, v5

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_8

    const-string v7, "MirrorLink"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In For Loop: With tthe Index [i] as :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "MirrorLink"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In For Loop : Package name for the index ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "] is :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v8, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    invoke-interface {v8, v7}, Lcom/mirrorlink/android/service/IMirrorlinkManager;->getApplicationElements(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    move-object v6, v8

    const-string v8, "MirrorLink"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In For Loop: Bundle Received for the package Name"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v6, :cond_6

    return-void

    :cond_6
    new-instance v8, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    const-string v9, "pkgName"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;-><init>(Ljava/lang/String;)V

    const-string v9, "EntitiesName"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mEntityName:Ljava/lang/String;

    const-string v9, "AppStatus"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mStatus:Ljava/lang/String;

    const-string v9, "VALID_DATE"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mValidDate:Ljava/lang/String;

    const-string v9, "RESTRICTED"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mRestricted:Ljava/lang/String;

    const-string v9, "NONRESTRICTED"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mNonRestricted:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mListDevices:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    invoke-direct {v9, v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v4}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->setIndex(I)V

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v7, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->setKey(Ljava/lang/String;)V

    iget-object v12, v8, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mStatus:Ljava/lang/String;

    invoke-virtual {v9, v12}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->setValidCheck(Ljava/lang/String;)V

    new-instance v12, Lcom/samsung/android/settings/mirrorlink/MirrorLink$3;

    invoke-direct {v12, p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink$3;-><init>(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)V

    invoke-virtual {v9, v12}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    iget-object v12, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v12, :cond_7

    iget-object v12, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v12, v9}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v8

    const-string v9, "MirrorLink"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadAppIcon : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_2
    move-exception v8

    const-string v9, "MirrorLink"

    const-string v10, "Exception while receiving the information of the Given PackagName through AIDl"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_7
    :goto_3
    nop

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_8
    return-void

    :cond_9
    const-string v3, "MirrorLink"

    const-string v4, "updateMirrorLinkApplications() getActivity() returns null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateState()V
    .locals 4

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->lock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-boolean v0, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbConnected:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMassStorageActive:Z

    if-nez v0, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v6

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    array-length v9, v3

    move v10, v7

    move v7, v6

    :goto_1
    if-ge v7, v9, :cond_3

    aget-object v11, v3, v7

    iget-object v12, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbRegexs:[Ljava/lang/String;

    array-length v13, v12

    move v14, v10

    move v10, v6

    :goto_2
    if-ge v10, v13, :cond_2

    aget-object v15, v12, v10

    invoke-virtual {v11, v15}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/4 v14, 0x1

    iput-boolean v6, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMLUeventStarted:Z

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    move v10, v14

    goto :goto_1

    :cond_3
    array-length v7, v2

    move v9, v8

    move v8, v6

    :goto_3
    if-ge v8, v7, :cond_6

    aget-object v11, v2, v8

    iget-object v12, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbRegexs:[Ljava/lang/String;

    array-length v13, v12

    move v14, v9

    move v9, v6

    :goto_4
    if-ge v9, v13, :cond_5

    aget-object v15, v12, v9

    invoke-virtual {v11, v15}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    const/4 v14, 0x1

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v8, v8, 0x1

    move v9, v14

    goto :goto_3

    :cond_6
    const-string v7, "MirrorLink"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateUsbState : "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-boolean v11, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMLUeventStarted:Z

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-boolean v11, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mIsNcmConnected:Z

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v7, 0x7f12154f

    if-nez v0, :cond_9

    if-eqz v10, :cond_7

    iget-object v5, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    goto :goto_5

    :cond_7
    iget-boolean v5, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMassStorageActive:Z

    if-eqz v5, :cond_8

    iget-object v5, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    const v7, 0x7f121550

    invoke-virtual {v5, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    goto :goto_5

    :cond_8
    iget-object v5, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    const v7, 0x7f121551

    invoke-virtual {v5, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    :goto_5
    iget-object v5, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v5, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto/16 :goto_6

    :cond_9
    iget-boolean v8, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMLUeventStarted:Z

    const v11, 0x7f121547

    if-eqz v8, :cond_b

    iget-object v6, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    iget-boolean v6, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mSwitchNotSet:Z

    if-eqz v6, :cond_a

    iget-object v6, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :cond_a
    iget-object v6, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto/16 :goto_6

    :cond_b
    if-eqz v0, :cond_11

    iget-boolean v8, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mIsNcmConnected:Z

    if-eqz v8, :cond_d

    iget-object v6, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    iget-boolean v6, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mSwitchNotSet:Z

    if-eqz v6, :cond_c

    iget-object v6, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :cond_c
    iget-object v6, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto :goto_6

    :cond_d
    if-eqz v10, :cond_e

    iget-object v5, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    iget-object v5, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v5, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto :goto_6

    :cond_e
    if-eqz v9, :cond_f

    iget-object v5, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    const v7, 0x7f121549

    invoke-virtual {v5, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    iget-object v5, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v5, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto :goto_6

    :cond_f
    iget-object v7, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    const v8, 0x7f12154e

    invoke-virtual {v7, v8}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    iget-boolean v7, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mSwitchNotSet:Z

    if-eqz v7, :cond_10

    iget-object v7, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v7, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :cond_10
    iget-object v5, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto :goto_6

    :cond_11
    const-string v5, "MirrorLink"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unreachable point! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-boolean v7, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMLUeventStarted:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xe7e

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->setHasOptionsMenu(Z)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->startTethering()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iput v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mTetherChoice:I

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->handler:Landroid/os/Handler;

    const v0, 0x7f1500da

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mContext:Landroid/content/Context;

    const-string v1, "ncm_usb_tether_settings"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbRegexs:[Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbRegexs:[Ljava/lang/String;

    array-length v2, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_2
    new-instance v3, Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;-><init>(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)V

    iput-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mServiceCon:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->BindToMLService()Z

    move-result v3

    if-nez v3, :cond_3

    return-void

    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const v2, 0x7f121542

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMenuMore:Landroid/view/MenuItem;

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "MirrorLink Settings: onDestroy"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->doUnbindFromService()V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SubSettings;

    const-class v2, Lcom/samsung/android/settings/mirrorlink/MirrorLinkDeviceUID;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x7f121542

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    move-object v3, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/settings/SubSettings;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return v1
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-direct {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->doUnbindFromService()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const-string v0, "MirrorLink"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USB onPreferenceChange: mSwitchNotSet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mSwitchNotSet:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mSwitchNotSet:Z

    if-eqz v1, :cond_2

    iput-boolean v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mSwitchNotSet:Z

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/samsung/android/settings/mirrorlink/MirrorLink$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink$4;-><init>(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iput v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mTetherChoice:I

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->setNcmTethering(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "usb_tethering_enabled"

    iget-object v6, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v6

    if-ne v6, v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "MirrorLink : Binding to Tms"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->BindToMLService()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->updateState()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "usb_tethering_enabled"

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMassStorageActive:Z

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v2, "DEVPATH=/devices/virtual/misc/usb_ncm"

    invoke-virtual {v1, v2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;-><init>(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Lcom/samsung/android/settings/mirrorlink/MirrorLink$1;)V

    iput-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    move-object v1, v3

    const-string v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "file"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v0, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->updateState()V

    return-void
.end method

.method public onStop()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUEventObserver:Landroid/os/UEventObserver;

    invoke-virtual {v0}, Landroid/os/UEventObserver;->stopObserving()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mSwitchNotSet:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mSwitchNotSet:Z

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "usb_tethering_enabled"

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
