.class Lcom/samsung/android/settings/lockscreen/AODPreferenceController$2;
.super Ljava/lang/Object;
.source "AODPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->makeAccessibilityDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/AODPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/AODPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController$2;->this$0:Lcom/samsung/android/settings/lockscreen/AODPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController$2;->this$0:Lcom/samsung/android/settings/lockscreen/AODPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->access$100(Lcom/samsung/android/settings/lockscreen/AODPreferenceController;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setChecked(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
