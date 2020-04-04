.class Lcom/samsung/android/settings/display/NightThemeFragment$3;
.super Ljava/lang/Object;
.source "NightThemeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/NightThemeFragment;->showLocationOnDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/NightThemeFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/NightThemeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/NightThemeFragment$3;->this$0:Lcom/samsung/android/settings/display/NightThemeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/NightThemeFragment$3;->this$0:Lcom/samsung/android/settings/display/NightThemeFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/NightThemeFragment;->access$500(Lcom/samsung/android/settings/display/NightThemeFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/NightThemeFragment$3;->this$0:Lcom/samsung/android/settings/display/NightThemeFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/NightThemeFragment;->access$600(Lcom/samsung/android/settings/display/NightThemeFragment;)Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->onClick()V

    return-void
.end method
