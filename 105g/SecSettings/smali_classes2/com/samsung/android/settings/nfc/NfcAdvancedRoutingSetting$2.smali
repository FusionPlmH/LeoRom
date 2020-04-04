.class Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$2;
.super Ljava/lang/Object;
.source "NfcAdvancedRoutingSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->makeAlertDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$2;->this$0:Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting$2;->this$0:Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;->access$100(Lcom/samsung/android/settings/nfc/NfcAdvancedRoutingSetting;)Landroid/support/v7/preference/PreferenceScreen;

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
