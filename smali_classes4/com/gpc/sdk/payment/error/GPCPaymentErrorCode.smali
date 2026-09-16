.class public interface abstract Lcom/gpc/sdk/payment/error/GPCPaymentErrorCode;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GATEWAY_CHECK_SUBSCRIPTION_ERROR_FOR_BUSINESS:Ljava/lang/String; = "121304"

.field public static final GATEWAY_CHECK_SUBSCRIPTION_ERROR_FOR_REMOTE_DATA:Ljava/lang/String; = "121303"

.field public static final GATEWAY_CHECK_SUBSCRIPTION_ERROR_FOR_REQUEST_SERVER_NETWORK:Ljava/lang/String; = "121302"

.field public static final GATEWAY_IS_SUBSCRIPTION_AVAILABLE_ERROR_FOR_BUSINESS:Ljava/lang/String; = "120604"

.field public static final GATEWAY_IS_SUBSCRIPTION_AVAILABLE_ERROR_FOR_REMOTE_DATA:Ljava/lang/String; = "120603"

.field public static final GATEWAY_IS_SUBSCRIPTION_AVAILABLE_ERROR_FOR_REQUEST_SERVER_NETWORK:Ljava/lang/String; = "120602"

.field public static final GATEWAY_IS_SUBSCRIPTION_AVAILABLE_ERROR_FOR_UNKNOW:Ljava/lang/String; = "120601"

.field public static final GATEWAY_NOTIFY_SUBSCRIPTION_ERROR_FOR_BUSINESS:Ljava/lang/String; = "120504"

.field public static final GATEWAY_NOTIFY_SUBSCRIPTION_ERROR_FOR_REMOTE_DATA:Ljava/lang/String; = "120503"

.field public static final GATEWAY_NOTIFY_SUBSCRIPTION_ERROR_FOR_REQUEST_SERVER_NETWORK:Ljava/lang/String; = "120502"

.field public static final GATEWAY_NOTIFY_SUBSCRIPTION_ERROR_FOR_UNKNOW:Ljava/lang/String; = "120501"

.field public static final GET_AMAZON_PRODUCTS_ERROR_FOR_ERROR_PRODUCT_DATA:Ljava/lang/String; = "120405"

.field public static final GET_AMAZON_PRODUCTS_ERROR_FOR_INVALID_PRODUCT_DATA:Ljava/lang/String; = "120404"

.field public static final GET_AMAZON_PRODUCTS_ERROR_FOR_REMOTE_DATA:Ljava/lang/String; = "120403"

.field public static final GET_AMAZON_PRODUCTS_ERROR_FOR_REQUEST_SERVER_NETWORK:Ljava/lang/String; = "120402"

.field public static final GET_AMAZON_PRODUCTS_ERROR_FOR_UNKNOW:Ljava/lang/String; = "120401"

.field public static final GET_PRODUCTS_ERROR_FOR_BUSINESS:Ljava/lang/String; = "120104"

.field public static final GET_PRODUCTS_ERROR_FOR_REMOTE_DATA:Ljava/lang/String; = "120103"

.field public static final GET_PRODUCTS_ERROR_FOR_REQUEST_SERVER_NETWORK:Ljava/lang/String; = "120102"

.field public static final GET_PRODUCTS_ERROR_FOR_UNKNOW:Ljava/lang/String; = "120101"

.field public static final GET_PRODUCTS_ERROR_FOR_USER_ID_EMPTY:Ljava/lang/String; = "120105"

.field public static final PAYMENT_ERROR_FOR_BUY_SAME_ITEM:Ljava/lang/String; = "120313"

.field public static final PAYMENT_ERROR_FOR_CHECK_HAS_SUBSCRIBED_BY_USER_ID:Ljava/lang/String; = "120310"

.field public static final PAYMENT_ERROR_FOR_CONSUME_NULL_PURCHASE:Ljava/lang/String; = "120308"

.field public static final PAYMENT_ERROR_FOR_GATEWAY_CHECK_SUBSCRIPTION_ERROR:Ljava/lang/String; = "120319"

.field public static final PAYMENT_ERROR_FOR_HAS_SUBSCRIBED_BY_USER_ID:Ljava/lang/String; = "120305"

.field public static final PAYMENT_ERROR_FOR_HUAWEI_ACCOUNT_IS_NOT_LOGGED:Ljava/lang/String; = "120311"

.field public static final PAYMENT_ERROR_FOR_HUAWEI_SERVICE_DOES_NOT_SUPPORT_CURRENT_LOCALE:Ljava/lang/String; = "120312"

.field public static final PAYMENT_ERROR_FOR_IABHELPER_BUSINESS:Ljava/lang/String; = "120302"

.field public static final PAYMENT_ERROR_FOR_IABHELPER_UNKNOW:Ljava/lang/String; = "120301"

.field public static final PAYMENT_ERROR_FOR_INIT_BUT_DESTORYING:Ljava/lang/String; = "120309"

.field public static final PAYMENT_ERROR_FOR_LAST_TASK_UNCOMPLETE:Ljava/lang/String; = "120304"

.field public static final PAYMENT_ERROR_FOR_PAYMENT_NOT_AVAILABLE:Ljava/lang/String; = "120303"

.field public static final PAYMENT_ERROR_FOR_PURCHASEFLOW_EXCEPTION:Ljava/lang/String; = "120306"

.field public static final PAYMENT_ERROR_FOR_PURCHASEFLOW_RESULT_FAILURE:Ljava/lang/String; = "120307"

.field public static final PAYMENT_ERROR_FOR_QUERY_ITEM:Ljava/lang/String; = "120314"

.field public static final PAYMENT_ERROR_FOR_SUBSCRIBE_DATA_ERROR:Ljava/lang/String; = "120317"

.field public static final PAYMENT_ERROR_FOR_SUBSCRIBE_ITEM_NOT_FOUND:Ljava/lang/String; = "120316"

.field public static final PAYMENT_ERROR_FOR_SUBSCRIBE_MIGRATION_OLD_PURCHASE_NOT_FOUND:Ljava/lang/String; = "120318"

.field public static final REPAYMENT_ERROR_FOR_BUY_SAME_ITEM:Ljava/lang/String; = "121005"

.field public static final REPAYMENT_ERROR_FOR_GATEWAY:Ljava/lang/String; = "121002"

.field public static final REPAYMENT_ERROR_FOR_IAB:Ljava/lang/String; = "121003"

.field public static final REPAYMENT_ERROR_FOR_IAB_CANCEL:Ljava/lang/String; = "121004"

.field public static final REPAYMENT_ERROR_FOR_LOAD_ITEMS:Ljava/lang/String; = "121006"

.field public static final REPAYMENT_ERROR_FOR_UNAVAILABLE:Ljava/lang/String; = "121001"

.field public static final RUSTORE_PAYMENT_ERROR_FOR_ORDER_NUMBER_NULL_PURCHASE:Ljava/lang/String; = "121101"

.field public static final SAMSUNG_PAYMENT_ERROR_FOR_CONSUME_BUT_ANOTHER_OPERATION_RUNNING:Ljava/lang/String; = "120909"

.field public static final SAMSUNG_PAYMENT_ERROR_FOR_CONSUME_NULL_PURCHASE:Ljava/lang/String; = "120906"

.field public static final SAMSUNG_PAYMENT_ERROR_FOR_GET_OWNED_PRODUCT_BUT_ANOTHER_OPERATION_RUNNING:Ljava/lang/String; = "120910"

.field public static final SAMSUNG_PAYMENT_ERROR_FOR_GET_PRODUCTS_DETAILS_BUT_ANOTHER_OPERATION_RUNNING:Ljava/lang/String; = "120911"

.field public static final SAMSUNG_PAYMENT_ERROR_FOR_IABHELPER_UNKNOWN_ERROR:Ljava/lang/String; = "120901"

.field public static final SAMSUNG_PAYMENT_ERROR_FOR_NO_CONSUME:Ljava/lang/String; = "120912"

.field public static final SAMSUNG_PAYMENT_ERROR_FOR_ORDER_NUMBER_NULL_PURCHASE:Ljava/lang/String; = "120904"

.field public static final SAMSUNG_PAYMENT_ERROR_FOR_ORDER_SIGN_NULL_PURCHASE:Ljava/lang/String; = "120905"

.field public static final SAMSUNG_PAYMENT_ERROR_FOR_OWNED_PRODUCT_NULL_PURCHASE:Ljava/lang/String; = "120903"

.field public static final SAMSUNG_PAYMENT_ERROR_FOR_PAY_BUT_ANOTHER_OPERATION_RUNNING:Ljava/lang/String; = "120913"

.field public static final SAMSUNG_PAYMENT_ERROR_FOR_PURCHASEFLOW_EXCEPTION:Ljava/lang/String; = "120907"

.field public static final SAMSUNG_PAYMENT_ERROR_FOR_PURCHASEFLOW_PASSTHROUGH_VALUE_LOST:Ljava/lang/String; = "120908"

.field public static final SAMSUNG_PAYMENT_ERROR_FOR_REQUEST_PRODUCT_NULL_PURCHASE:Ljava/lang/String; = "120902"
