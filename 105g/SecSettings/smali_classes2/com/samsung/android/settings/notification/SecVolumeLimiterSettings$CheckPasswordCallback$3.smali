.class Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback$3;
.super Ljava/lang/Object;
.source "SecVolumeLimiterSettings.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->showCheckPasswordDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback$3;->this$1:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    if-eqz p2, :cond_1

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback$3;->this$1:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->access$700(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;)V

    const/4 v0, 0x1

    return v0
.end method
