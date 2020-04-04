.class Landroid/nfc/NfcAdapter$5;
.super Ljava/lang/Object;
.source "NfcAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/nfc/NfcAdapter;->isNFCStateChangeAllowed(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/nfc/NfcAdapter;


# direct methods
.method constructor <init>(Landroid/nfc/NfcAdapter;)V
    .locals 0

    iput-object p1, p0, Landroid/nfc/NfcAdapter$5;->this$0:Landroid/nfc/NfcAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroid/nfc/NfcAdapter$5;->this$0:Landroid/nfc/NfcAdapter;

    iget-object v0, v0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/nfc/NfcAdapter$5;->this$0:Landroid/nfc/NfcAdapter;

    iget-object v1, v1, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    const v2, 0x10400aa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
