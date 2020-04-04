.class Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$4;
.super Ljava/lang/Object;
.source "FingerprintSettingsEdit.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->initRenameEditTextView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$4;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$4;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;->access$400(Lcom/android/settings/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment;)V

    :goto_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
