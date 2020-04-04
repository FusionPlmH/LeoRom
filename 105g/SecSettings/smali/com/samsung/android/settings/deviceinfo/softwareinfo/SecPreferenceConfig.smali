.class public Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;
.super Landroid/support/v7/preference/Preference;
.source "SecPreferenceConfig.java"


# instance fields
.field private mColorUpdateButton:I

.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mPref:Landroid/content/SharedPreferences;

.field private mTextUpdateButton:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f0400a5

    const v1, 0x1010091

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const v0, -0xffff01

    iput v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mColorUpdateButton:I

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mTextUpdateButton:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->isOnline()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->forceRefreshConfigVersion()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;)I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->readUpdateButtonState()I

    move-result v0

    return v0
.end method

.method private forceRefreshConfigVersion()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.samsung.nsds.provider/device_config/force_update"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private getConfigVersion()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "version"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v1, "content://com.samsung.nsds.provider/device_config"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v2

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v2

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mContext:Landroid/content/Context;

    const v4, 0x7f12068e

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mContext:Landroid/content/Context;

    const-string v1, "com.settings.preference.config.update"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mPref:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mEditor:Landroid/content/SharedPreferences$Editor;

    const v0, 0x7f0d0293

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->setLayoutResource(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->readUpdateButtonState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->storeUpdateButtonState(I)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->setSelectable(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mContext:Landroid/content/Context;

    const v3, 0x7f121b2e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mTextUpdateButton:Ljava/lang/String;

    const v1, -0xffff01

    iput v1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mColorUpdateButton:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->setSelectable(Z)V

    :goto_0
    return-void
.end method

.method private isOnline()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private readUpdateButtonState()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "com.settings.update_button"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private storeUpdateButtonState(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "com.settings.update_button"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->readUpdateButtonState()I

    move-result v0

    const v1, 0x7f0a08b9

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a07f1

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->getConfigVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mTextUpdateButton:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v3, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mColorUpdateButton:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    new-instance v3, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig$1;-><init>(Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setUpdateButtonVisibility(I)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->storeUpdateButtonState(I)V

    const/4 v0, 0x0

    const v1, -0xffff01

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mContext:Landroid/content/Context;

    const v3, 0x7f121b2e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mTextUpdateButton:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mColorUpdateButton:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->setSelectable(Z)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mContext:Landroid/content/Context;

    const v3, 0x7f121b31

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mTextUpdateButton:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mColorUpdateButton:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->setSelectable(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mContext:Landroid/content/Context;

    const v1, 0x7f120851

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mTextUpdateButton:Ljava/lang/String;

    const v0, -0x777778

    iput v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->mColorUpdateButton:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->setSelectable(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->setSelectable(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->notifyChanged()V

    return-void
.end method
