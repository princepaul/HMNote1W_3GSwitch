.class Lcom/android/phone/settings/EditCustomLocationActivity$TextChangeListener;
.super Ljava/lang/Object;
.source "EditCustomLocationActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/EditCustomLocationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/EditCustomLocationActivity;


# direct methods
.method private constructor <init>(Lcom/android/phone/settings/EditCustomLocationActivity;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/phone/settings/EditCustomLocationActivity$TextChangeListener;->this$0:Lcom/android/phone/settings/EditCustomLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/settings/EditCustomLocationActivity;Lcom/android/phone/settings/EditCustomLocationActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/settings/EditCustomLocationActivity;
    .param p2, "x1"    # Lcom/android/phone/settings/EditCustomLocationActivity$1;

    .prologue
    .line 304
    invoke-direct {p0, p1}, Lcom/android/phone/settings/EditCustomLocationActivity$TextChangeListener;-><init>(Lcom/android/phone/settings/EditCustomLocationActivity;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/phone/settings/EditCustomLocationActivity$TextChangeListener;->this$0:Lcom/android/phone/settings/EditCustomLocationActivity;

    # invokes: Lcom/android/phone/settings/EditCustomLocationActivity;->resetDoneButtonEnabled()V
    invoke-static {v0}, Lcom/android/phone/settings/EditCustomLocationActivity;->access$100(Lcom/android/phone/settings/EditCustomLocationActivity;)V

    .line 319
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 309
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 314
    return-void
.end method
