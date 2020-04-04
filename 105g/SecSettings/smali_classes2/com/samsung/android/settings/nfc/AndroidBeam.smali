.class public Lcom/samsung/android/settings/nfc/AndroidBeam;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AndroidBeam.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field static final DBG:Z


# instance fields
.field private activity:Lcom/android/settings/SettingsActivity;

.field private mBeamDisallowedByBase:Z

.field private mBeamDisallowedByOnlyAdmin:Z

.field private mContext:Landroid/content/Context;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mOldActivityTitle:Ljava/lang/CharSequence;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/AndroidBeam;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->activity:Lcom/android/settings/SettingsActivity;

    new-instance v0, Lcom/samsung/android/settings/nfc/AndroidBeam$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/AndroidBeam$1;-><init>(Lcom/samsung/android/settings/nfc/AndroidBeam;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/nfc/AndroidBeam;)Lcom/android/settings/SettingsActivity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->activity:Lcom/android/settings/SettingsActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/nfc/AndroidBeam;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/nfc/AndroidBeam;->setSwitchStatus(ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/nfc/AndroidBeam;)Landroid/nfc/NfcAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/nfc/AndroidBeam;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method private allowAndroidBeam()Z
    .locals 8

    const/4 v0, 0x1

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy1"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "isAndroidBeamAllowed"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :try_start_0
    const-string v3, "isAndroidBeamAllowed"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    invoke-virtual {v3}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_1
    :goto_2
    return v0
.end method

.method public static synthetic lambda$onCreateView$0(Lcom/samsung/android/settings/nfc/AndroidBeam;Landroid/content/DialogInterface;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private makeAlertDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120117

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f120cfb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/nfc/AndroidBeam$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/nfc/AndroidBeam$2;-><init>(Lcom/samsung/android/settings/nfc/AndroidBeam;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/nfc/AndroidBeam$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/nfc/AndroidBeam$3;-><init>(Lcom/samsung/android/settings/nfc/AndroidBeam;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/nfc/AndroidBeam$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/nfc/AndroidBeam$4;-><init>(Lcom/samsung/android/settings/nfc/AndroidBeam;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private populateViewForOrientation()V
    .locals 7

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->startAnimation()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0078

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a007e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x2

    if-ne v3, v6, :cond_0

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a007c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a007d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/widget/LinearLayout;

    :goto_0
    if-eqz v2, :cond_1

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0601bb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    :cond_1
    return-void
.end method

.method private setSwitchStatus(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method

.method private startAnimation()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a007b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a007a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/ImageView;

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isFolderModel(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f010011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_1
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gtactive2lte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gtactive2wifi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "winner"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f010010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f010012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f010013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x45

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "AndroidBeamSettings"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mBeamDisallowedByOnlyAdmin:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->populateViewForOrientation()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->activity:Lcom/android/settings/SettingsActivity;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->activity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mBeamDisallowedByBase:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-boolean v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mBeamDisallowedByBase:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-boolean v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mBeamDisallowedByBase:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mBeamDisallowedByOnlyAdmin:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->populateViewForOrientation()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    nop

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "no_outgoing_beam"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "no_outgoing_beam"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mBeamDisallowedByBase:Z

    iget-boolean v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mBeamDisallowedByBase:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;-><init>(Landroid/app/Activity;)V

    const-string v2, "no_outgoing_beam"

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->prepareDialogBuilder(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/nfc/-$$Lambda$AndroidBeam$hrdbeovm2tkPZydAHmO8Fq5_mgE;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/nfc/-$$Lambda$AndroidBeam$hrdbeovm2tkPZydAHmO8Fq5_mgE;-><init>(Lcom/samsung/android/settings/nfc/AndroidBeam;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mBeamDisallowedByOnlyAdmin:Z

    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v1

    :cond_0
    const v1, 0x7f0d0013

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mView:Landroid/view/View;

    return-object v1
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mBeamDisallowedByOnlyAdmin:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mBeamDisallowedByOnlyAdmin:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->activity:Lcom/android/settings/SettingsActivity;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mBeamDisallowedByOnlyAdmin:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->allowAndroidBeam()Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.nfc.action.ABEAM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Landroid/app/UiModeManager;->SEM_ACTION_ENTER_DESKTOP_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "com.felicanetworks.nfc.action.ADAPTER_RW_P2P_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->activity:Lcom/android/settings/SettingsActivity;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/nfc/AndroidBeam;->setHasOptionsMenu(Z)V

    :cond_4
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->allowAndroidBeam()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportDomesticUi()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->makeAlertDialog()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->getMetricsCategory()I

    move-result v1

    const/16 v2, 0xe44

    invoke-static {v1, v2, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    return-void
.end method
