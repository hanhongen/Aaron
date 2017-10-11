package com.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016081500253382";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCsRoHi4LGXLx5mNSaUEXdLy/VRplCdyrPeMVMGIokj0YsZyRC01Qw7LiuTpGpT/TEaiIpIHU8dLafy6LW1RAGdZd8aSKcdkTD0WaHrFEWBGz5TyrVXrRVBtTgDfKdQ12LwWY4pirrOhSyvp5Zeihryu2BKIe+Fjtn+/A3UrNEQfR/DZzMNhGNqT8174+KyYso7IjqL/TpR55aVfsHoiJz/qy/83Z4ucYmq3HcAuGFfRuwbvKNr/4+W6SR7HvsQISaXA2NKRfYH4suh0ngH/EXH8Sh8zhLaYQtnQgY81H626GCCVVXl/6srO+xbn01hI5nTehm34XLmTF++xePX3pbTAgMBAAECggEAd8Xdb9tAHRhJTk4NsEwkYLJAsK+sxMe1Hfm0+0LvjdOVnivITbEBe/OxoEhjFFmn1gav/UtDQcoIRj28d3X8mW3GGwQAC/Jx0rCufj3txMEoKCF6yqYvbSuM8f+sY+wbgXcB+6fUENlOJCGjzb6+1ZuoamIFoRmcPkcHZqFwCMGMcQezqD+h5/fTgS6iTODmyNlFK2EyuyPfO6EAivy+1xrnWKY6TZfQHuu2LlXUw/F5PjHTyexoz5ZAgTSvWoC/UYUerLna17yKGKbkQ74B3h7CTXVLi9voxqPtbLFKg+OMX/mcvNio1ki0ku+RM/rOh+Wh1m63f8TLvhy/AFymgQKBgQD8QFC/10y9FA9VvUwXg6DSmVFA5jIvJTevuRghAOPt1s13kBFp65GcCUUN8pIA/EiIckkMENKYMxoVe2qil/tkmQzFACjJZ0GPWd2jaElh3PNMtb7YS5ieWVXhQ+/BeTuZaLBa0S2x2sTTuTbp8cKwOmsNYPR6o+zCQH+zvyN1MQKBgQCu1ez1mwRI6kzPEoVYdMpxHbbqp2XgeOdmIiLS6MhABvF2D+d+SoyEni0lzUpLedwK5Face0oqw+PS7eBBo/LSXN47qerKUVhuqSw++lh9xf8AlqzsHg6V/MsbgdtIPDmY/IeUuLEhTSFjIyjr4GZQiRn19Igp3h2oOCzmBDbbQwKBgQCh+h6gAX1qUI5ETSimVMSZVxAA75A8C9cFRILE9pBl8i+/3cgAzt6SZrVr7l5ouZdN3q0fTVIdn3rZXoWr4JHyGAFGIwMNyPslNNyIiHfOmpW0pWPl+i0HSXBHFVvITbPCn6HWv0lrUoJfPiiP8slEZk7FqYNzmP14Avi9kDgRkQKBgFoVkArc3NBVKU5o1JxHUSgHj4BI0I1gvpo5bIgPuV6ENVYHy9eewdhzR//6TxWkrGRQUvA99nEijfjY6Hvp5evOPhOv8XJdh5s9P7cTdxUXN9Utzdu7gPh3UI/T0RDfNy5Er/dJUrs96r4SF7ux3AYTHnVEkgRAljde+oNqGHnRAoGBAJ/d/hpVfJdLv6d7uuz6qsNpLcgTVEirU2i1Yu9JshtUgnxpwHDWctqrhyT1UUzBMFnaoDSP8277eeN4E/87zOjO2bUusodM7o2aLkCVeCld/AHr8EMh01smOGlZPYaSe1X9JqXky1k3ZWTUreR/b+s6DAMc+zjtFDlaLP0syqSA";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArEaB4uCxly8eZjUmlBF3S8v1UaZQncqz3jFTBiKJI9GLGckQtNUMOy4rk6RqU/0xGoiKSB1PHS2n8ui1tUQBnWXfGkinHZEw9Fmh6xRFgRs+U8q1V60VQbU4A3ynUNdi8FmOKYq6zoUsr6eWXooa8rtgSiHvhY7Z/vwN1KzREH0fw2czDYRjak/Ne+PismLKOyI6i/06UeeWlX7B6Iic/6sv/N2eLnGJqtx3ALhhX0bsG7yja/+Plukkex77ECEmlwNjSkX2B+LLodJ4B/xFx/EofM4S2mELZ0IGPNR+tuhgglVV5f+rKzvsW59NYSOZ03oZt+Fy5kxfvsXj196W0wIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://工程公网访问地址/alipay.trade.page.pay-JAVA-UTF-8/notify_url.jsp";
	//
	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://localhost/p2p_project/member_deposit_record/Payment_is_completed";
	//http://工程公网访问地址/alipay.trade.page.pay-JAVA-UTF-8/return_url.jsp
	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	//https://openapi.alipaydev.com/gateway.do
	// 支付宝网关
	public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

