.class public Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;
.super Landroid/widget/FrameLayout;
.source "VoiceGuideButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$OnVoiceGuideListener;
    }
.end annotation


# instance fields
.field private mBound:Z

.field private mListener:Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$OnVoiceGuideListener;

.field private final mScriptServiceConnection:Landroid/content/ServiceConnection;

.field private mSuwScriptPlayerCallback:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback;

.field private mSuwScriptPlayerService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

.field private mVoiceEnabled:Z

.field mVoiceIconClickListener:Landroid/view/View$OnClickListener;

.field private mVoiceIconView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$1;-><init>(Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;)V

    iput-object v0, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->mVoiceIconClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$2;-><init>(Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;)V

    iput-object v0, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->mScriptServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$1;-><init>(Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;)V

    iput-object v0, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->mVoiceIconClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$2;-><init>(Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;)V

    iput-object v0, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->mScriptServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$1;-><init>(Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;)V

    iput-object v0, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->mVoiceIconClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$2;-><init>(Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;)V

    iput-object v0, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->mScriptServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$1;-><init>(Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;)V

    iput-object v0, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->mVoiceIconClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$2;-><init>(Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;)V

    iput-object v0, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->mScriptServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->mVoiceEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->mVoiceEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->mVoiceIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;)Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$OnVoiceGuideListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->mListener:Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$OnVoiceGuideListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;)Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->mSuwScriptPlayerService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    return-object p1
.end method

.method static synthetic access$402(Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->mBound:Z

    return p1
.end method

.method private bindScriptPlayer()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.suwscriptplayer.intent.action.SCRIPT_PLAYER_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.suwscriptplayer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->mScriptServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    const-string v2, "VoiceGuideButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindService : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initVoiceIcon()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->mVoiceIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/sec/android/vzwswlibrary/R$id;->vswl_voice_guide_button_icon:I

    invoke-virtual {p0, v0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->mVoiceIconView:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->mVoiceEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->mVoiceIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/vzwswlibrary/R$drawable;->vswl_voice_guide_button_on:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/vzwswlibrary/R$string;->vswl_voice_guide_tts:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/vzwswlibrary/R$string;->vswl_on_tts:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->mVoiceIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/vzwswlibrary/R$drawable;->vswl_voice_guide_button_off:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/vzwswlibrary/R$string;->vswl_voice_guide_tts:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/vzwswlibrary/R$string;->vswl_off_tts:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/vzwswlibrary/util/Utils;->getVoiceGuideEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->mVoiceEnabled:Z

    invoke-direct {p0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->initVoiceIcon()V

    invoke-direct {p0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->bindScriptPlayer()V

    return-void
.end method

.method public invalidateVoiceIcon()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/vzwswlibrary/util/Utils;->getVoiceGuideEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->mVoiceEnabled:Z

    sget v0, Lcom/sec/android/vzwswlibrary/R$id;->vswl_voice_guide_button_icon:I

    invoke-virtual {p0, v0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->mVoiceIconView:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->mVoiceEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->mVoiceIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/vzwswlibrary/R$drawable;->vswl_voice_guide_button_on:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/vzwswlibrary/R$string;->vswl_voice_guide_tts:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/vzwswlibrary/R$string;->vswl_on_tts:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->mVoiceIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/vzwswlibrary/R$drawable;->vswl_voice_guide_button_off:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/vzwswlibrary/R$string;->vswl_voice_guide_tts:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/vzwswlibrary/R$string;->vswl_off_tts:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const-string v0, "VoiceGuideButton"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->mBound:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->mScriptServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->mBound:Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->mSuwScriptPlayerService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const-string v0, "VoiceGuideButton"

    const-string v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public playstart(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "VoiceGuideButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playstart(voiceEnabled - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->mVoiceEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ") : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->mVoiceEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->mSuwScriptPlayerService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->mSuwScriptPlayerService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    iget-object v1, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->mSuwScriptPlayerCallback:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback;

    invoke-interface {v0, p1, v1}, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;->PlayScript(Ljava/lang/String;Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_0
    :goto_0
    nop

    return-void
.end method

.method public setListener(Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$OnVoiceGuideListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->mListener:Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton$OnVoiceGuideListener;

    return-void
.end method

.method public setVoicePlayerCallback(Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->mSuwScriptPlayerCallback:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback;

    return-void
.end method

.method public stopplay()V
    .locals 2

    :try_start_0
    const-string v0, "VoiceGuideButton"

    const-string v1, "stopplay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->mSuwScriptPlayerService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/ui/VoiceGuideButton;->mSuwScriptPlayerService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    invoke-interface {v0}, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;->StopScript()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method
