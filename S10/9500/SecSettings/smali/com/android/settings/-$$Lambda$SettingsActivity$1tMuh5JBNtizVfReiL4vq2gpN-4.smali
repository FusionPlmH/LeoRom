.class public final synthetic Lcom/android/settings/-$$Lambda$SettingsActivity$1tMuh5JBNtizVfReiL4vq2gpN-4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/SettingsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/-$$Lambda$SettingsActivity$1tMuh5JBNtizVfReiL4vq2gpN-4;->f$0:Lcom/android/settings/SettingsActivity;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/-$$Lambda$SettingsActivity$1tMuh5JBNtizVfReiL4vq2gpN-4;->f$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v0, p1}, Lcom/android/settings/SettingsActivity;->lambda$onCreateOptionsMenu$0(Lcom/android/settings/SettingsActivity;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
