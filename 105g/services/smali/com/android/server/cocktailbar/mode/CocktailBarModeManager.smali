.class public Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;
.super Ljava/lang/Object;
.source "CocktailBarModeManager.java"

# interfaces
.implements Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;


# static fields
.field public static final COCKTAIL_MODE_KNOX:I = 0x2

.field public static final COCKTAIL_MODE_KNOX_COM:I = 0x3

.field public static final COCKTAIL_MODE_NORMAL:I = 0x1

.field public static final COCKTAIL_MODE_PRIVATE_MODE:I = 0x10000

.field public static final COCKTAIL_MODE_UNKNOWN:I = 0x0

.field public static final COCKTAIL_TYPE_ALONE:I = 0x2

.field public static final COCKTAIL_TYPE_OVERLAY:I = 0x1

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCocktailBarModeId:I

.field private mContext:Landroid/content/Context;

.field private mKnoxMode:Lcom/android/server/cocktailbar/mode/CocktailBarMode;

.field private mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

.field private mNextPrivateModeId:I

.field private mNormalMode:Lcom/android/server/cocktailbar/mode/CocktailBarMode;

.field private mPrivateModeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/cocktailbar/mode/CocktailBarMode;",
            ">;"
        }
    .end annotation
.end field

.field private mPrivateModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/cocktailbar/mode/CocktailBarMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mNextPrivateModeId:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mPrivateModes:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mPrivateModeMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    new-instance v1, Lcom/android/server/cocktailbar/mode/NormalMode;

    invoke-direct {v1}, Lcom/android/server/cocktailbar/mode/NormalMode;-><init>()V

    iput-object v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mNormalMode:Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    new-instance v1, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;

    iget-object v3, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    const/4 v4, 0x2

    move-object v2, v1

    move-object v5, p3

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;-><init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;)V

    iput-object v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mKnoxMode:Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/server/cocktailbar/mode/PrivateEmergencyMode;

    iget-object v2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mContext:Landroid/content/Context;

    const/high16 v3, 0x10000

    iget v4, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mNextPrivateModeId:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mNextPrivateModeId:I

    or-int v0, v3, v4

    invoke-direct {v1, v2, v0, p3, p0}, Lcom/android/server/cocktailbar/mode/PrivateEmergencyMode;-><init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    invoke-direct {p0, v1}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->setupPrivateMode(Lcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    :goto_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mKnoxMode:Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->setupPrivateMode(Lcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    return-void
.end method

.method private setupPrivateMode(Lcom/android/server/cocktailbar/mode/CocktailBarMode;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mPrivateModeMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mPrivateModes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mPrivateModeMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setupPrivateMode : exist duplicated privateMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    .locals 4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mPrivateModes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mNormalMode:Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mKnoxMode:Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mNormalMode:Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    goto :goto_1

    :pswitch_2
    goto :goto_1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    invoke-interface {v2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v3

    if-ne v3, p1, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCocktailBarMode(Ljava/lang/String;)Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mPrivateModeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    return-object v0
.end method

.method public getCocktailBarModeName(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mPrivateModes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    invoke-interface {v1}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-interface {v1}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentModeId()I
    .locals 1

    iget v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    return v0
.end method

.method public isDisableCocktailBarMode(I)Z
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getCocktailBarType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public onBroadcastReceived(Landroid/content/Intent;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mPrivateModes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    invoke-interface {v1}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getRegistrationType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-interface {v1, p1}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->onBroadcastReceived(Landroid/content/Intent;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->onResetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    return v3

    :pswitch_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->onSetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    return v3

    :pswitch_2
    return v3

    :cond_0
    :goto_1
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V
    .locals 3

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v1

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;->onResetMode(IILjava/lang/String;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    sget-boolean v0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    sget-object v1, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "onResetMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onSetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V
    .locals 5

    if-eqz p2, :cond_2

    iget v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    invoke-virtual {p0, v0}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    iget v2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    invoke-interface {v0}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;->onUnsetMode(IILjava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v2

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getCocktailType()I

    move-result v4

    invoke-interface {v1, p1, v2, v3, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;->onSetMode(IILjava/lang/String;I)V

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v1

    iput v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    sget-boolean v1, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "onSetMode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, " no-current"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public onSetModeForcely(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V
    .locals 5

    if-eqz p2, :cond_2

    iget v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    invoke-virtual {p0, v0}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    iget v2, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    invoke-interface {v0}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;->onUnsetMode(IILjava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v2

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getCocktailType()I

    move-result v4

    invoke-interface {v1, p1, v2, v3, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;->onSetMode(IILjava/lang/String;I)V

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v1

    iput v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    sget-boolean v1, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuffer;

    sget-object v2, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "onSetModeForcely: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, " no-current"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public refreshCocktailBarMode()I
    .locals 3

    iget v0, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mCocktailBarModeId:I

    iget-object v1, p0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->mPrivateModes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    invoke-interface {v2, v0}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->renewMode(I)I

    move-result v0

    goto :goto_0

    :cond_0
    return v0
.end method

.method public resetMode(II)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->onResetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    return-void
.end method

.method public setMode(II)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->onSetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    return-void
.end method
