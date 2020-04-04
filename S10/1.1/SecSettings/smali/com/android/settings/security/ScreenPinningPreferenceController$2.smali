.class Lcom/android/settings/security/ScreenPinningPreferenceController$2;
.super Ljava/lang/Object;
.source "ScreenPinningPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/security/ScreenPinningPreferenceController;->screenPinningDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/security/ScreenPinningPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/security/ScreenPinningPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/security/ScreenPinningPreferenceController$2;->this$0:Lcom/android/settings/security/ScreenPinningPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningPreferenceController$2;->this$0:Lcom/android/settings/security/ScreenPinningPreferenceController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/security/ScreenPinningPreferenceController;->access$100(Lcom/android/settings/security/ScreenPinningPreferenceController;Z)V

    return-void
.end method
