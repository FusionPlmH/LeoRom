.class Lcom/samsung/android/settings/general/ResetAccSettings$1;
.super Ljava/lang/Object;
.source "ResetAccSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/general/ResetAccSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/general/ResetAccSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/general/ResetAccSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/general/ResetAccSettings$1;->this$0:Lcom/samsung/android/settings/general/ResetAccSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetAccSettings$1;->this$0:Lcom/samsung/android/settings/general/ResetAccSettings;

    const/16 v1, 0x37

    invoke-static {v0, v1}, Lcom/samsung/android/settings/general/ResetAccSettings;->access$000(Lcom/samsung/android/settings/general/ResetAccSettings;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetAccSettings$1;->this$0:Lcom/samsung/android/settings/general/ResetAccSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/general/ResetAccSettings;->access$100(Lcom/samsung/android/settings/general/ResetAccSettings;)V

    :cond_0
    return-void
.end method
