.class Lcom/samsung/android/settings/personalvibration/SelectPatternDialog$2;
.super Ljava/lang/Object;
.source "SelectPatternDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->showRenameDialog(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;

.field final synthetic val$EditPattern:Landroid/widget/TextView;

.field final synthetic val$id:I

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;Landroid/widget/TextView;ILandroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog$2;->this$0:Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;

    iput-object p2, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog$2;->val$EditPattern:Landroid/widget/TextView;

    iput p3, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog$2;->val$id:I

    iput-object p4, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog$2;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog$2;->val$EditPattern:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\r"

    const-string v4, " "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "vibration_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "vibration_type"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog$2;->this$0:Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;

    invoke-virtual {v2}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog$2;->val$id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const-string v3, "SelectPatternDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "count"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , mPatternName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SelectPatternDialog"

    const-string v4, "OK was clicked, the pattern saved sucessfully"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog$2;->this$0:Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->access$000(Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;)Lcom/samsung/android/settings/personalvibration/VibrationPatternListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/personalvibration/VibrationPatternListAdapter;->loadPatternType()V

    iget-object v3, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog$2;->this$0:Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->access$000(Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;)Lcom/samsung/android/settings/personalvibration/VibrationPatternListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/personalvibration/VibrationPatternListAdapter;->notifyDataSetChanged()V

    iget-object v3, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog$2;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog$2;->val$EditPattern:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method
