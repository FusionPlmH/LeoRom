.class Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$1;
.super Ljava/lang/Object;
.source "SecFontStylePreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->applyFontStyleInternal()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

.field final synthetic val$am:Landroid/app/IActivityManager;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;Landroid/app/IActivityManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$1;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$1;->val$am:Landroid/app/IActivityManager;

    iput p3, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$1;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$1;->val$am:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$1;->val$value:I

    iput v1, v0, Landroid/content/res/Configuration;->FlipFont:I

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$1;->val$am:Landroid/app/IActivityManager;

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method
